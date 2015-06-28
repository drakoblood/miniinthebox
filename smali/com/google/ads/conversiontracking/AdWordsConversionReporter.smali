.class public Lcom/google/ads/conversiontracking/AdWordsConversionReporter;
.super Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/ads/conversiontracking/a$d;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "value"
    .parameter "isRepeatable"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/GoogleConversionReporter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->c:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->e:Ljava/lang/String;

    .line 35
    iput-boolean p5, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->f:Z

    .line 36
    instance-of v0, p0, Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/conversiontracking/a$d;->b:Lcom/google/ads/conversiontracking/a$d;

    :goto_0
    iput-object v0, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->d:Lcom/google/ads/conversiontracking/a$d;

    .line 39
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/google/ads/conversiontracking/a$d;->a:Lcom/google/ads/conversiontracking/a$d;

    goto :goto_0
.end method

.method public static registerReferrer(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .parameter "applicationContext"
    .parameter "clickUri"

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Failed to register referrer from a null click url"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return v0

    .line 74
    :cond_0
    const-string v1, "GoogleConversionReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1}, Lcom/google/ads/conversiontracking/a;->a(Landroid/net/Uri;)Lcom/google/ads/conversiontracking/a$b;

    move-result-object v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    const-string v1, "GoogleConversionReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse referrer from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p0, v1}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$b;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    const-string v1, "GoogleConversionReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_2
    const-string v1, "GoogleConversionReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "applicationContext"
    .parameter "conversionId"
    .parameter "label"
    .parameter "value"
    .parameter "isRepeatable"

    .prologue
    .line 95
    new-instance v0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->report()V

    .line 97
    return-void
.end method


# virtual methods
.method public report()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/google/ads/conversiontracking/a$c;

    invoke-direct {v0}, Lcom/google/ads/conversiontracking/a$c;-><init>()V

    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->d:Lcom/google/ads/conversiontracking/a$d;

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->a(Lcom/google/ads/conversiontracking/a$d;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->f:Z

    invoke-static {v1, v0, v2}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->d:Lcom/google/ads/conversiontracking/a$d;

    sget-object v2, Lcom/google/ads/conversiontracking/a$d;->a:Lcom/google/ads/conversiontracking/a$d;

    if-ne v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/conversiontracking/a$c;->a(Lcom/google/ads/conversiontracking/a$a;)Lcom/google/ads/conversiontracking/a$c;

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/conversiontracking/a;->b(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->f:Z

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error sending ping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
