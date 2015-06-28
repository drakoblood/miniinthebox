.class Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributionIdFetcher"
.end annotation


# static fields
.field private static final AF_ATTRIBUTION_ID_URI:Ljava/lang/String; = "https://api.appsflyer.com/install_data/v2/"


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appsFlyerDevKey"

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 640
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 641
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    .line 642
    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 647
    .local v1, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 710
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 714
    .end local v2           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 651
    .restart local v2       #context:Landroid/content/Context;
    :cond_1
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://api.appsflyer.com/install_data/v2/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?devkey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;->appsFlyerDevKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&device_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 656
    .local v12, urlString:Ljava/lang/StringBuilder;
    const-string v13, "AppsFlyer_1.3.20"

    const-string v14, "Calling server for attribution"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v13, Ljava/net/URL;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 659
    const-string v13, "GET"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 660
    const/16 v13, 0x2710

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 661
    const-string v13, "Connection"

    const-string v14, "close"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 664
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_9

    .line 666
    const/4 v7, 0x0

    .line 667
    .local v7, reader:Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 668
    .local v10, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 670
    .local v4, inputStreamReader:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 671
    .end local v4           #inputStreamReader:Ljava/io/InputStreamReader;
    .local v5, inputStreamReader:Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 673
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 674
    .local v6, line:Ljava/lang/String;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 675
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 678
    :catchall_0
    move-exception v13

    move-object v4, v5

    .end local v5           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v4       #inputStreamReader:Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v6           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v7, :cond_2

    .line 679
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 681
    :cond_2
    if-eqz v4, :cond_3

    .line 682
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 704
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v10           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v12           #urlString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    .line 705
    .local v11, t:Ljava/lang/Throwable;
    :try_start_6
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 706
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/appsflyer/ConversionDataListener;->onConversionFailure(Ljava/lang/String;)V

    .line 708
    :cond_4
    const-string v13, "AppsFlyer_1.3.20"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 710
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 678
    .end local v11           #t:Ljava/lang/Throwable;
    .restart local v2       #context:Landroid/content/Context;
    .restart local v5       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v10       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v12       #urlString:Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v8, :cond_6

    .line 679
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 681
    :cond_6
    if-eqz v5, :cond_7

    .line 682
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 685
    :cond_7
    const-string v13, "AppsFlyer_1.3.20"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Attribution data: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_8

    if-eqz v2, :cond_8

    .line 687
    const-string v13, "appsflyer-data"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 689
    .local v9, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 690
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v13, "attributionId"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 693
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 694
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/appsflyer/ConversionDataListener;->onConversionDataLoaded(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 710
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #inputStreamReader:Ljava/io/InputStreamReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .end local v9           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v10           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_8
    :goto_3
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 699
    :cond_9
    :try_start_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 700
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$400()Lcom/appsflyer/ConversionDataListener;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error connection to server: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/appsflyer/ConversionDataListener;->onConversionFailure(Ljava/lang/String;)V

    .line 702
    :cond_a
    const-string v13, "AppsFlyer_1.3.20"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AttributionIdFetcher response code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  url: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 710
    .end local v2           #context:Landroid/content/Context;
    .end local v12           #urlString:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v13

    if-eqz v1, :cond_b

    .line 711
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v13

    .line 678
    .restart local v2       #context:Landroid/content/Context;
    .restart local v4       #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v10       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v12       #urlString:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v13

    goto/16 :goto_2

    .end local v4           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v5       #inputStreamReader:Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v13

    move-object v4, v5

    .end local v5           #inputStreamReader:Ljava/io/InputStreamReader;
    .restart local v4       #inputStreamReader:Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method
