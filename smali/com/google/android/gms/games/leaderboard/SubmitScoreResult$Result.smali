.class public final Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final formattedScore:Ljava/lang/String;

.field public final newBest:Z

.field public final rawScore:J

.field public final scoreTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "rawScore"
    .parameter "formattedScore"
    .parameter "scoreTag"
    .parameter "newBest"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->rawScore:J

    iput-object p3, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->formattedScore:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->scoreTag:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->newBest:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/dl;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string v1, "RawScore"

    iget-wide v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->rawScore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string v1, "FormattedScore"

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->formattedScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string v1, "ScoreTag"

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->scoreTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    const-string v1, "NewBest"

    iget-boolean v2, p0, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult$Result;->newBest:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
