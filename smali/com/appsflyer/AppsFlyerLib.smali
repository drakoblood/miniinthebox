.class public Lcom/appsflyer/AppsFlyerLib;
.super Landroid/content/BroadcastReceiver;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$1;,
        Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;,
        Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;,
        Lcom/appsflyer/AppsFlyerLib$DataCollector;
    }
.end annotation


# static fields
.field static final AF_COUNTER_PREF:Ljava/lang/String; = "appsFlyerCount"

.field private static final AF_DEV_KEY_PARAM:Ljava/lang/String; = "appsflyerKey"

.field private static final AF_SHARED_PREF:Ljava/lang/String; = "appsflyer-data"

.field public static final APPS_FLYER_USER:Ljava/lang/String; = "https://track.appsflyer.com/api/v2.2/androidevent?buildnumber=1.3.20&app_id="

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri; = null

.field static final ATTRIBUTION_ID_PREF:Ljava/lang/String; = "attributionId"

.field private static final CALL_SERVER_ACTION:Ljava/lang/String; = "call server."

.field private static final CHANNEL_SERVER_PARAM:Ljava/lang/String; = "channel"

.field static final FIRST_INSTALL_PREF:Ljava/lang/String; = "appsFlyerFirstInstall"

.field private static final INSTALL_UPDATE_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_hhmmZ"

.field public static final LOG_TAG:Ljava/lang/String; = "AppsFlyer_1.3.20"

.field private static final ON_RECIEVE_CALLED:Ljava/lang/String; = "onRecieve called. refferer="

.field private static final PREPARE_DATA_ACTION:Ljava/lang/String; = "collect data for server"

.field static final REFERRER_PREF:Ljava/lang/String; = "referrer"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "1.3.20"

.field static final SENT_SUCCESSFULLY_PREF:Ljava/lang/String; = "sentSuccessfully"

.field public static final SERVER_BUILD_NUMBER:Ljava/lang/String; = "2.2"

.field private static final SERVER_RESPONDED_ACTION:Ljava/lang/String; = "response from server. status="

.field private static conversionDataListener:Lcom/appsflyer/ConversionDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 632
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lcom/appsflyer/ConversionDataListener;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;

    return-object v0
.end method

.method private static addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 438
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 439
    .local v0, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    const-string v2, "advertiserId"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "advertiserIdEnabled"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    .end local v0           #adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_1
    return-void

    .line 440
    .restart local v0       #adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 441
    .end local v0           #adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :catch_0
    move-exception v1

    .line 442
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "AppsFlyer_1.3.20"

    const-string v3, "Google Play services SDK is missing."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 444
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 445
    const-string v2, "AppsFlyer_1.3.20"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_2
    const-string v2, "Could not fetch advertiser id: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 447
    :cond_1
    const-string v2, "AppsFlyer_1.3.20"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .parameter "inputString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v0, conversionData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .local v3, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #key:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Lorg/json/JSONException;
    const-string v5, "AppsFlyer_1.3.20"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v0, 0x0

    .line 211
    .end local v0           #conversionData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-object v0
.end method

.method private static debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "actionMsg"
    .parameter "parameter"
    .parameter "context"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    const-string v0, "com.appsflyer"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/appsflyer/DebugLogQueue;->getInstance()Lcom/appsflyer/DebugLogQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/DebugLogQueue;->push(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "appid"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "AppUserId"

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 493
    invoke-static {p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "contentResolver"

    .prologue
    const/4 v3, 0x0

    .line 456
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 457
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 458
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 459
    .local v6, attributionId:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-object v3

    .line 463
    :cond_1
    :try_start_0
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 468
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move-object v3, v6

    .line 475
    goto :goto_0

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "AppsFlyer_1.3.20"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 469
    :catch_1
    move-exception v0

    goto :goto_1

    .line 467
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 468
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 471
    :goto_2
    throw v0

    .line 469
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static getConversionData(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/AttributionIDNotReady;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 158
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 159
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "referrer"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, referrer:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "af_tranid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->referrerStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 166
    :goto_0
    return-object v3

    .line 163
    :cond_0
    const-string v3, "attributionId"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, attributionString:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 166
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->attributionStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    .line 168
    :cond_1
    new-instance v3, Lcom/appsflyer/AttributionIDNotReady;

    invoke-direct {v3}, Lcom/appsflyer/AttributionIDNotReady;-><init>()V

    throw v3
.end method

.method public static getConversionData(Landroid/content/Context;Lcom/appsflyer/ConversionDataListener;)V
    .locals 2
    .parameter "context"
    .parameter "conversionDataListener"

    .prologue
    .line 174
    :try_start_0
    invoke-static {p0}, Lcom/appsflyer/AppsFlyerLib;->getConversionData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 175
    .local v1, conversionData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, v1}, Lcom/appsflyer/ConversionDataListener;->onConversionDataLoaded(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/appsflyer/AttributionIDNotReady; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #conversionData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, attributionIDNotReady:Lcom/appsflyer/AttributionIDNotReady;
    sput-object p1, Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/ConversionDataListener;

    goto :goto_0
.end method

.method private static getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "dateFormat"
    .parameter "context"

    .prologue
    .line 416
    const-string v4, "appsflyer-data"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 417
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "appsFlyerFirstInstall"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, firstLaunchDate:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 419
    const-string v4, "appsFlyerCount"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, counter:I
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    .line 421
    const-string v4, "AppsFlyer_1.3.20"

    const-string v5, "AppsFlyer: first launch detected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 426
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 427
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "appsFlyerFirstInstall"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    .end local v0           #counter:I
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v4, "AppsFlyer_1.3.20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppsFlyer: first launch date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v2

    .line 424
    .restart local v0       #counter:I
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method private static getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 479
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 481
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 482
    .local v2, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string v3, "WIFI"

    .line 489
    :goto_0
    return-object v3

    .line 485
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 486
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    const-string v3, "MOBILE"

    goto :goto_0

    .line 489
    :cond_1
    const-string v3, "unkown"

    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 91
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static referrerStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .parameter "referrer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v1, conversionData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x26

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 184
    .local v8, separator:I
    if-ltz v8, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v8, 0x1

    if-le v10, v11, :cond_1

    .line 185
    const-string v10, "\\&"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, params:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 187
    .local v6, param:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, keyAndValue:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v5, v3, v10

    .line 189
    .local v5, name:Ljava/lang/String;
    array-length v10, v3

    if-le v10, v12, :cond_0

    aget-object v9, v3, v12

    .line 190
    .local v9, value:Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    const-string v9, ""

    goto :goto_1

    .line 193
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #keyAndValue:[Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #param:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "appsFlyerKey"
    .parameter "eventName"
    .parameter "eventValue"
    .parameter "referrer"

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 222
    .local v7, scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v0, Lcom/appsflyer/AppsFlyerLib$DataCollector;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 224
    return-void
.end method

.method public static sendTracking(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static sendTracking(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appsFlyerKey"

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0, v0}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "eventName"
    .parameter "eventValue"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appsFlyerKey"
    .parameter "eventName"
    .parameter "eventValue"

    .prologue
    .line 215
    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 216
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "referrer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, referrer:Ljava/lang/String;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->runInBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private static sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 44
    .parameter "context"
    .parameter "appsFlyerKey"
    .parameter "eventName"
    .parameter "eventValue"
    .parameter "referrer"

    .prologue
    .line 228
    :try_start_0
    const-string v40, "AppsFlyer_1.3.20"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Start tracking package: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v40, "collect data for server"

    const-string v41, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 230
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v37, urlString:Ljava/lang/StringBuilder;
    const-string v40, "https://track.appsflyer.com/api/v2.2/androidevent?buildnumber=1.3.20&app_id="

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v33, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v40, "brand"

    sget-object v41, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v40, "device"

    sget-object v41, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v40, "product"

    sget-object v41, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v40, "sdk"

    sget v41, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v40, "model"

    sget-object v41, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v40, "deviceType"

    sget-object v41, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x80

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 242
    .local v8, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 243
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 244
    const-string v40, "CHANNEL"

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 245
    .local v12, channelObj:Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 246
    instance-of v0, v12, Ljava/lang/String;

    move/from16 v40, v0

    if-eqz v40, :cond_12

    check-cast v12, Ljava/lang/String;

    .end local v12           #channelObj:Ljava/lang/Object;
    move-object v11, v12

    .line 247
    .local v11, channel:Ljava/lang/String;
    :goto_0
    const-string v40, "channel"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v11           #channel:Ljava/lang/String;
    :cond_0
    move-object/from16 v5, p1

    .line 252
    .local v5, afKEy:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 253
    const-string v40, "AppsFlyerKey"

    invoke-static/range {v40 .. v40}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    :cond_1
    if-eqz v5, :cond_2

    .line 256
    const-string v40, "appsflyerKey"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x8

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_2

    .line 258
    const-string v40, "dkh"

    const/16 v41, 0x0

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getAppUserId()Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, appUserId:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 264
    const-string v40, "appUserId"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_3
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 268
    const-string v40, "eventName"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v40, "eventValue"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_4
    const-string v40, "appid"

    invoke-static/range {v40 .. v40}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_5

    .line 273
    const-string v40, "appid"

    const-string v41, "appid"

    invoke-static/range {v41 .. v41}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_5
    const-string v40, "currencyCode"

    invoke-static/range {v40 .. v40}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, currencyCode:Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 277
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_6

    .line 278
    const-string v40, "AppsFlyer_1.3.20"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Appsflyer WARNING: currency code should be 3 characters!!! \'"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "\' is not a legal value."

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_6
    const-string v40, "currency"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_7
    const-string v40, "IS_UPDATE"

    invoke-static/range {v40 .. v40}, Lcom/appsflyer/AppsFlyerLib;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 284
    .local v27, isUpdate:Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 285
    const-string v40, "isUpdate"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    .line 289
    .local v20, facebookAttributeId:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 290
    const-string v40, "fb"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v40

    const-string v41, "deviceTrackingDisabled"

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 295
    .local v18, deviceTrackingDisabled:Z
    if-eqz v18, :cond_a

    .line 296
    const-string v40, "deviceTrackingDisabled"

    const-string v41, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_a
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v40

    const-string v41, "collectIMEI"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 300
    .local v14, collectIMEI:Z
    if-eqz v14, :cond_b

    .line 302
    :try_start_1
    const-string v40, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    .line 303
    .local v31, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v24

    .line 304
    .local v24, imei:Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 305
    const-string v40, "imei"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    .end local v24           #imei:Ljava/lang/String;
    .end local v31           #manager:Landroid/telephony/TelephonyManager;
    :cond_b
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v40

    const-string v41, "collectAndroidId"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    .line 313
    .local v13, collectAndroidId:Z
    if-eqz v13, :cond_c

    .line 316
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "android_id"

    invoke-static/range {v40 .. v41}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, androidId:Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 318
    const-string v40, "android_id"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 325
    .end local v6           #androidId:Ljava/lang/String;
    :cond_c
    :goto_2
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v36

    .line 326
    .local v36, uid:Ljava/lang/String;
    if-eqz v36, :cond_d

    .line 327
    const-string v40, "uid"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 334
    .end local v36           #uid:Ljava/lang/String;
    :cond_d
    :goto_3
    :try_start_5
    const-string v40, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 339
    :goto_4
    :try_start_6
    const-string v40, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    .line 340
    .restart local v31       #manager:Landroid/telephony/TelephonyManager;
    const-string v40, "operator"

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v40, "carrier"

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 347
    .end local v31           #manager:Landroid/telephony/TelephonyManager;
    :goto_5
    :try_start_7
    const-string v40, "network"

    invoke-static/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 352
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v40

    const-string v41, "collectMAC"

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result v15

    .line 353
    .local v15, collectMAC:Z
    if-eqz v15, :cond_e

    .line 355
    :try_start_9
    const-string v40, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/net/wifi/WifiManager;

    .line 356
    .local v39, wifiMan:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v38

    .line 357
    .local v38, wifiInf:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v30

    .line 358
    .local v30, macAddress:Ljava/lang/String;
    if-eqz v30, :cond_e

    .line 359
    const-string v40, "mac"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 366
    .end local v30           #macAddress:Ljava/lang/String;
    .end local v38           #wifiInf:Landroid/net/wifi/WifiInfo;
    .end local v39           #wifiMan:Landroid/net/wifi/WifiManager;
    :cond_e
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->addAdvertiserIDData(Landroid/content/Context;Ljava/util/Map;)V

    .line 368
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v40, "yyyy-MM-dd_hhmmZ"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 369
    .local v17, dateFormat:Ljava/text/SimpleDateFormat;
    sget v40, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    const/16 v41, 0x9

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_f

    .line 371
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v40

    move-object/from16 v0, v40

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v25, v0

    .line 372
    .local v25, installed:J
    const-string v40, "installDate"

    new-instance v41, Ljava/util/Date;

    move-object/from16 v0, v41

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 379
    .end local v25           #installed:J
    :cond_f
    :goto_8
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v32

    .line 380
    .local v32, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v40, "app_version_code"

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v40, "app_version_name"

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v22, v0

    .line 385
    .local v22, firstInstallTime:J
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v28, v0

    .line 386
    .local v28, lastUpdateTime:J
    const-string v40, "date1"

    new-instance v41, Ljava/util/Date;

    move-object/from16 v0, v41

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v40, "date2"

    new-instance v41, Ljava/util/Date;

    move-object/from16 v0, v41

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getFirstInstallDate(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 389
    .local v21, firstInstallDate:Ljava/lang/String;
    const-string v40, "firstLaunchDate"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 396
    .end local v21           #firstInstallDate:Ljava/lang/String;
    .end local v22           #firstInstallTime:J
    .end local v28           #lastUpdateTime:J
    .end local v32           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_9
    :try_start_d
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_10

    .line 397
    const-string v40, "referrer"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_10
    const-string v40, "appsflyer-data"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 401
    .local v35, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v40, "attributionId"

    const/16 v41, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, attributionString:Ljava/lang/String;
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_11

    .line 403
    const-string v40, "installAttribution"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_11
    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v34

    .line 408
    .local v34, scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v40, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v33

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/appsflyer/AppsFlyerLib$1;)V

    const-wide/16 v41, 0x1388

    sget-object v43, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    move-object/from16 v4, v43

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 413
    .end local v5           #afKEy:Ljava/lang/String;
    .end local v7           #appUserId:Ljava/lang/String;
    .end local v8           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v9           #attributionString:Ljava/lang/String;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v13           #collectAndroidId:Z
    .end local v14           #collectIMEI:Z
    .end local v15           #collectMAC:Z
    .end local v16           #currencyCode:Ljava/lang/String;
    .end local v17           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #deviceTrackingDisabled:Z
    .end local v20           #facebookAttributeId:Ljava/lang/String;
    .end local v27           #isUpdate:Ljava/lang/String;
    .end local v33           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34           #scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    .end local v35           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v37           #urlString:Ljava/lang/StringBuilder;
    :goto_a
    return-void

    .line 246
    .restart local v8       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #bundle:Landroid/os/Bundle;
    .restart local v12       #channelObj:Ljava/lang/Object;
    .restart local v33       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v37       #urlString:Ljava/lang/StringBuilder;
    :cond_12
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 329
    .end local v12           #channelObj:Ljava/lang/Object;
    .restart local v5       #afKEy:Ljava/lang/String;
    .restart local v7       #appUserId:Ljava/lang/String;
    .restart local v13       #collectAndroidId:Z
    .restart local v14       #collectIMEI:Z
    .restart local v16       #currencyCode:Ljava/lang/String;
    .restart local v18       #deviceTrackingDisabled:Z
    .restart local v20       #facebookAttributeId:Ljava/lang/String;
    .restart local v27       #isUpdate:Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 330
    .local v19, e:Ljava/lang/Exception;
    const-string v40, "AppsFlyer_1.3.20"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "could not get uid "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_3

    .line 410
    .end local v5           #afKEy:Ljava/lang/String;
    .end local v7           #appUserId:Ljava/lang/String;
    .end local v8           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v13           #collectAndroidId:Z
    .end local v14           #collectIMEI:Z
    .end local v16           #currencyCode:Ljava/lang/String;
    .end local v18           #deviceTrackingDisabled:Z
    .end local v19           #e:Ljava/lang/Exception;
    .end local v20           #facebookAttributeId:Ljava/lang/String;
    .end local v27           #isUpdate:Ljava/lang/String;
    .end local v33           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v37           #urlString:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v19

    .line 411
    .local v19, e:Ljava/lang/Throwable;
    const-string v40, "AppsFlyer_1.3.20"

    const-string v41, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 348
    .end local v19           #e:Ljava/lang/Throwable;
    .restart local v5       #afKEy:Ljava/lang/String;
    .restart local v7       #appUserId:Ljava/lang/String;
    .restart local v8       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #bundle:Landroid/os/Bundle;
    .restart local v13       #collectAndroidId:Z
    .restart local v14       #collectIMEI:Z
    .restart local v16       #currencyCode:Ljava/lang/String;
    .restart local v18       #deviceTrackingDisabled:Z
    .restart local v20       #facebookAttributeId:Ljava/lang/String;
    .restart local v27       #isUpdate:Ljava/lang/String;
    .restart local v33       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v37       #urlString:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v19

    .line 349
    .local v19, e:Ljava/lang/Exception;
    :try_start_e
    const-string v40, "AppsFlyer_1.3.20"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "checking network error "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_6

    .line 392
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v15       #collectMAC:Z
    .restart local v17       #dateFormat:Ljava/text/SimpleDateFormat;
    :catch_3
    move-exception v40

    goto/16 :goto_9

    .line 390
    :catch_4
    move-exception v40

    goto/16 :goto_9

    .line 373
    :catch_5
    move-exception v40

    goto/16 :goto_8

    .line 361
    .end local v17           #dateFormat:Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v40

    goto/16 :goto_7

    .line 342
    .end local v15           #collectMAC:Z
    :catch_7
    move-exception v40

    goto/16 :goto_5

    .line 335
    :catch_8
    move-exception v40

    goto/16 :goto_4

    .line 320
    :catch_9
    move-exception v40

    goto/16 :goto_2

    .line 307
    .end local v13           #collectAndroidId:Z
    :catch_a
    move-exception v40

    goto/16 :goto_1
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 123
    const-string v0, "appid"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static setAppUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 95
    const-string v0, "AppUserId"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static setAppsFlyerKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 115
    const-string v0, "AppsFlyerKey"

    invoke-static {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static setCollectAndroidID(Z)V
    .locals 2
    .parameter "isCollect"

    .prologue
    .line 103
    const-string v0, "collectAndroidId"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static setCollectIMEI(Z)V
    .locals 2
    .parameter "isCollect"

    .prologue
    .line 111
    const-string v0, "collectIMEI"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static setCollectMACAddress(Z)V
    .locals 2
    .parameter "isCollect"

    .prologue
    .line 107
    const-string v0, "collectMAC"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static setCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .parameter "currencyCode"

    .prologue
    .line 135
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static setDeviceTrackingDisabled(Z)V
    .locals 2
    .parameter "isDisabled"

    .prologue
    .line 143
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "deviceTrackingDisabled"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public static setIsUpdate(Z)V
    .locals 2
    .parameter "isUpdate"

    .prologue
    .line 131
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "IS_UPDATE"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 87
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static setUseHTTPFalback(Z)V
    .locals 2
    .parameter "isUseHttp"

    .prologue
    .line 99
    const-string v0, "useHttpFallback"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 65
    const-string v3, "referrer"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, referrer:Ljava/lang/String;
    const-string v3, "AppsFlyer_1.3.20"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "referrer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v1, :cond_0

    .line 68
    const-string v3, "BroadcastReceiver got referrer: "

    invoke-static {v3, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 69
    const-string v3, "onRecieve called. refferer="

    invoke-static {v3, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->debugAction(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 70
    const-string v3, "appsflyer-data"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "referrer"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    const-string v3, ""

    invoke-static {p1, v3, v6, v6, v1}, Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
