.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
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
    name = "DataCollector"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private referrer:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "appsFlyerKey"
    .parameter "eventName"
    .parameter "eventValue"
    .parameter "referrer"

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    .line 506
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    .line 508
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    .line 509
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    .line 510
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 496
    invoke-direct/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 513
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    #calls: Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method
