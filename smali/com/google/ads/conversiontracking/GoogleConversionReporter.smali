.class public abstract Lcom/google/ads/conversiontracking/GoogleConversionReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/conversiontracking/a$c;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/conversiontracking/GoogleConversionReporter$1;-><init>(Lcom/google/ads/conversiontracking/GoogleConversionReporter;Ljava/lang/String;ZLcom/google/ads/conversiontracking/a$c;Landroid/content/Context;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method public abstract report()V
.end method
