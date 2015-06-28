.class public Lcom/google/ads/conversiontracking/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$a;->a:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Lcom/google/ads/conversiontracking/a$a;->b:Ljava/lang/String;

    .line 421
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/a$a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/a$a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
