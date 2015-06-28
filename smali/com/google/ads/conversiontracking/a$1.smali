.class final Lcom/google/ads/conversiontracking/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/conversiontracking/a;->a(Landroid/content/Context;Lcom/google/ads/conversiontracking/a$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/google/ads/conversiontracking/a$b;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/google/ads/conversiontracking/a$b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/ads/conversiontracking/a$1;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/ads/conversiontracking/a$1;->b:Lcom/google/ads/conversiontracking/a$b;

    iput-object p3, p0, Lcom/google/ads/conversiontracking/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/google/ads/conversiontracking/a$1;->b:Lcom/google/ads/conversiontracking/a$b;

    invoke-static {v1}, Lcom/google/ads/conversiontracking/a$b;->b(Lcom/google/ads/conversiontracking/a$b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/conversiontracking/a$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method
