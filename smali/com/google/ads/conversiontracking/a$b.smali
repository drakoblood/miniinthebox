.class public Lcom/google/ads/conversiontracking/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/ads/conversiontracking/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/conversiontracking/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$b;->a:Ljava/lang/String;

    .line 399
    iput-object p2, p0, Lcom/google/ads/conversiontracking/a$b;->b:Lcom/google/ads/conversiontracking/a$a;

    .line 400
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/a$b;)Lcom/google/ads/conversiontracking/a$a;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$b;->b:Lcom/google/ads/conversiontracking/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/a$b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$b;->a:Ljava/lang/String;

    return-object v0
.end method
