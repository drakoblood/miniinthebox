.class public final Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "screenName"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->c:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->d:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->e:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "screenName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->a:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->c:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->d:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->e:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "screenName"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public static reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "screenName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->report()V

    .line 102
    return-void
.end method


# virtual methods
.method public report()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "GoogleConversionReporter"

    const-string v1, "Error sending remarketing ping with empty screen name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/ads/conversiontracking/a$c;

    invoke-direct {v1}, Lcom/google/ads/conversiontracking/a$c;-><init>()V

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/conversiontracking/a$c;->a()Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/conversiontracking/a$c;->b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/ads/conversiontracking/a$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/ads/conversiontracking/a$c;->d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/conversiontracking/a;->b(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
