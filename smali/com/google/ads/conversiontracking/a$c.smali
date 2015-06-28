.class public Lcom/google/ads/conversiontracking/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/google/ads/conversiontracking/a$d;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/ads/conversiontracking/a$a;

.field private h:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    return-void
.end method

.method static synthetic a(Lcom/google/ads/conversiontracking/a$c;)Z
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/ads/conversiontracking/a$c;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/google/ads/conversiontracking/a$c;)Lcom/google/ads/conversiontracking/a$d;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->c:Lcom/google/ads/conversiontracking/a$d;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/conversiontracking/a$c;)Lcom/google/ads/conversiontracking/a$a;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->g:Lcom/google/ads/conversiontracking/a$a;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/ads/conversiontracking/a$c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/conversiontracking/a$c;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$c;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/ads/conversiontracking/a$c;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/conversiontracking/a$c;->b:Z

    .line 455
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/a$a;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->g:Lcom/google/ads/conversiontracking/a$a;

    .line 480
    return-object p0
.end method

.method public a(Lcom/google/ads/conversiontracking/a$d;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->c:Lcom/google/ads/conversiontracking/a$d;

    .line 460
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->a:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/conversiontracking/a$c;"
        }
    .end annotation

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->h:Ljava/util/Map;

    .line 485
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->d:Ljava/lang/String;

    .line 465
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->e:Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/ads/conversiontracking/a$c;
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$c;->f:Ljava/lang/String;

    .line 475
    return-object p0
.end method
