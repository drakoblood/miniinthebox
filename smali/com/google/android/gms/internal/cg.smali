.class public abstract Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;


# instance fields
.field private final el:Ljava/lang/Runnable;

.field private volatile hD:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cg$1;-><init>(Lcom/google/android/gms/internal/cg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->el:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cg;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->hD:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract ac()V
.end method

.method public final cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->hD:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->hD:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onStop()V
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->el:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/ch;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
