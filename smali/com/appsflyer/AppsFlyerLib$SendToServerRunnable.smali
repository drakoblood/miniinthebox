.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
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
    name = "SendToServerRunnable"
.end annotation


# instance fields
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

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .parameter "urlString"
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 526
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    .line 527
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    .line 528
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method private callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "url"
    .parameter "postData"
    .parameter "appsFlyerDevKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 582
    .local v3, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 584
    .local v1, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 586
    const-string v11, "POST"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v2, v11

    .line 588
    .local v2, contentLength:I
    const-string v11, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v11, 0x2710

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 591
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 592
    const/4 v6, 0x0

    .line 594
    .local v6, out:Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    .end local v6           #out:Ljava/io/OutputStreamWriter;
    .local v7, out:Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 597
    if-eqz v7, :cond_0

    .line 598
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    .line 601
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 602
    .local v10, statusCode:I
    const-string v11, "AppsFlyer_1.3.20"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "response code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v11, "response from server. status="

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v11, v12, v3}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 604
    const-string v11, "appsflyer-data"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 605
    .local v9, sharedPreferences:Landroid/content/SharedPreferences;
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 606
    iget-object v11, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 608
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 609
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "sentSuccessfully"

    const-string v12, "true"

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 610
    const-string v11, "appsFlyerCount"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 611
    .local v4, counter:I
    const-string v11, "appsFlyerCount"

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, v11, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 612
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    .end local v4           #counter:I
    .end local v5           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v11, "attributionId"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 618
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 620
    .local v8, scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v11, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v12, 0x1388

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v11, v12, v13, v14}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 623
    .end local v8           #scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :cond_2
    if-eqz v1, :cond_3

    .line 624
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 627
    :cond_3
    return-void

    .line 597
    .end local v7           #out:Ljava/io/OutputStreamWriter;
    .end local v9           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v10           #statusCode:I
    .restart local v6       #out:Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v11

    :goto_0
    if-eqz v6, :cond_4

    .line 598
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 623
    .end local v2           #contentLength:I
    .end local v6           #out:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v11

    if-eqz v1, :cond_5

    .line 624
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v11

    .line 597
    .restart local v2       #contentLength:I
    .restart local v7       #out:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #out:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 533
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 534
    .local v2, context:Landroid/content/Context;
    const/4 v9, 0x0

    .line 535
    .local v9, sentSuccessfully:Z
    if-eqz v2, :cond_1

    .line 536
    const-string v15, "appsflyer-data"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 537
    .local v10, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v15, "referrer"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 538
    .local v8, referrer:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v16, "referrer"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v16, "referrer"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    const-string v15, "true"

    const-string v16, "sentSuccessfully"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 544
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v16, "counter"

    const-string v17, "appsFlyerCount"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v8           #referrer:Ljava/lang/String;
    .end local v10           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    move-object/from16 v16, v0

    const-string v17, "isFirstCall"

    if-nez v9, :cond_3

    const/4 v15, 0x1

    :goto_0
    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v6, postData:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 550
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 551
    .local v14, value:Ljava/lang/String;
    if-nez v14, :cond_4

    const-string v14, ""

    .line 552
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 553
    const/16 v15, 0x26

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 555
    :cond_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 574
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #postData:Ljava/lang/StringBuilder;
    .end local v9           #sentSuccessfully:Z
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 575
    .local v11, t:Ljava/lang/Throwable;
    const-string v15, "AppsFlyer_1.3.20"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v11           #t:Ljava/lang/Throwable;
    :goto_3
    return-void

    .line 546
    .restart local v2       #context:Landroid/content/Context;
    .restart local v9       #sentSuccessfully:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 551
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #postData:Ljava/lang/StringBuilder;
    .restart local v14       #value:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 557
    .end local v5           #key:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, postDataString:Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    invoke-direct {v12, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 559
    .local v12, url:Ljava/net/URL;
    const-string v15, "AppsFlyer_1.3.20"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "url: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v15, "call server."

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\nPOST:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    #calls: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v15, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 561
    const-string v15, "AppsFlyer_1.3.20"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "data: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v16, "appsflyerKey"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7, v15}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 564
    :catch_1
    move-exception v3

    .line 566
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v15

    const-string v16, "useHttpFallback"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 567
    .local v13, useHttpFallback:Z
    if-eqz v13, :cond_6

    .line 568
    const-string v15, "https failed. trying http...."

    const-string v16, ""

    move-object/from16 v0, v16

    #calls: Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v15, v0, v2}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 569
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v17, "https:"

    const-string v18, "http:"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v17, "appsflyerKey"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7, v15}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->callServer(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 571
    :cond_6
    const-string v15, "AppsFlyer_1.3.20"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed to send requeset to server. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
