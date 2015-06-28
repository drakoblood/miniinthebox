.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/LoginButton$LoginButtonCallback;,
        Lcom/facebook/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/widget/LoginButton$OnErrorListener;,
        Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private flag:Z

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

.field private userInfoSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 63
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 70
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 71
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->flag:Z

    .line 194
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 196
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 63
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 70
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 71
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/facebook/widget/LoginButton;->flag:Z

    .line 207
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    .line 212
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 213
    invoke-virtual {p0, v2, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    .line 215
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 216
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$color;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    .line 221
    const-string v0, "Log in with Facebook"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 233
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 234
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 237
    :cond_1
    return-void

    .line 223
    :cond_2
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_button_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    .line 224
    sget v0, Lcom/facebook/android/R$drawable;->com_facebook_inverse_icon:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 226
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    .line 227
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 229
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 230
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$dimen;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 227
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 63
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 70
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 71
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->flag:Z

    .line 246
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 248
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    return-object v0
.end method

.method static synthetic access$10(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/LoginButton;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$3(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/widget/LoginButton;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .prologue
    .line 621
    iget-boolean v2, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 623
    .local v0, currentSession:Lcom/facebook/Session;
    if-eqz v0, :cond_1

    .line 624
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v2, :cond_0

    .line 625
    new-instance v2, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v1

    .local v1, request:Lcom/facebook/Request;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    .line 639
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 640
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/Session;

    .line 649
    .end local v0           #currentSession:Lcom/facebook/Session;
    .end local v1           #request:Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 643
    .restart local v0       #currentSession:Lcom/facebook/Session;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    .line 644
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    if-eqz v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    iget-object v3, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v2, v3}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    goto :goto_0
.end method

.method private finishInit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 532
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginClickListener;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 534
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/LoginButton$LoginButtonCallback;

    invoke-direct {v2, p0, v4}, Lcom/facebook/widget/LoginButton$LoginButtonCallback;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$LoginButtonCallback;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 536
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 538
    :cond_0
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 603
    if-nez p1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v2

    .line 607
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 608
    .local v1, session:Lcom/facebook/Session;
    if-eqz v1, :cond_2

    .line 609
    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    goto :goto_0

    .line 612
    :cond_2
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, applicationId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 617
    invoke-static {p1}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 584
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/android/R$styleable;->com_facebook_login_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 585
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    .line 586
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    .line 587
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 588
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 589
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    return-void
.end method

.method private setButtonText()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :goto_1
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/android/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    .line 400
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    check-cast p1, Lcom/facebook/FacebookException;

    .end local p1
    invoke-interface {v0, p1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 746
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    #getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->onErrorListener:Lcom/facebook/widget/LoginButton$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$5(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->flag:Z

    return v0
.end method

.method public logOut()V
    .locals 2

    .prologue
    .line 760
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v0

    .line 761
    .local v0, openSession:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 764
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 499
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 500
    .local v0, session:Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v1

    .line 504
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 555
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    .line 557
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 558
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 560
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 565
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    .line 568
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 528
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 529
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 1
    .parameter "defaultAudience"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    .line 278
    return-void
.end method

.method public setFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/facebook/widget/LoginButton;->flag:Z

    .line 757
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 550
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 1
    .parameter "loginBehavior"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    .line 413
    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .locals 0
    .parameter "eventName"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 1
    .parameter "onErrorListener"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    .line 258
    return-void
.end method

.method setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 577
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 366
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 3
    .parameter "permissions"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 392
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, permissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 314
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 3
    .parameter "permissions"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v2}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 339
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .parameter "newSession"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 521
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 522
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 523
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 463
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;)V
    .locals 0
    .parameter "userInfoChangedCallback"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    .line 452
    return-void
.end method
