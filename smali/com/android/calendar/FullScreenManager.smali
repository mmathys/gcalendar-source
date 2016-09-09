.class public Lcom/android/calendar/FullScreenManager;
.super Ljava/lang/Object;
.source "FullScreenManager.java"


# static fields
.field private static sFullScreenManager:Lcom/android/calendar/FullScreenManager;


# instance fields
.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mSystemWindowInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/calendar/FullScreenManager;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0, v5}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendar/FullScreenManager;->mSystemWindowInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    .line 38
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3e8

    const v4, 0x1000100

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/calendar/FullScreenManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/android/calendar/FullScreenManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/calendar/FullScreenManager;->sFullScreenManager:Lcom/android/calendar/FullScreenManager;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/android/calendar/FullScreenManager;->sFullScreenManager:Lcom/android/calendar/FullScreenManager;

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/android/calendar/FullScreenManager;

    invoke-direct {v0, p0}, Lcom/android/calendar/FullScreenManager;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/calendar/FullScreenManager;->sFullScreenManager:Lcom/android/calendar/FullScreenManager;

    .line 53
    sget-object v0, Lcom/android/calendar/FullScreenManager;->sFullScreenManager:Lcom/android/calendar/FullScreenManager;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/calendar/FullScreenManager;->removeView(Landroid/view/View;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mSystemWindowInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-virtual {v0, p2, v1, v1}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 64
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mSystemWindowInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 65
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 68
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/calendar/FullScreenManager;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/FullScreenManager;->mSystemWindowInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-virtual {v0, p1}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->removeView(Landroid/view/View;)V

    .line 78
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 79
    return-void
.end method
