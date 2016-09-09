.class public Lcom/android/calendar/KeyboardManipulator;
.super Ljava/lang/Object;
.source "KeyboardManipulator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEditText:Landroid/widget/EditText;

.field private mShowPendingSince:J

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/KeyboardManipulator;->mShowPendingSince:J

    .line 25
    iput-object p1, p0, Lcom/android/calendar/KeyboardManipulator;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    .line 27
    return-void
.end method

.method private cleanupCallbacks()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method private isShowPending()Z
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/KeyboardManipulator;->mShowPendingSince:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showIfNecessary()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->cleanupCallbacks()V

    .line 36
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->isShowPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 41
    iget-object v1, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 44
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 46
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/KeyboardManipulator;->mShowPendingSince:J

    goto :goto_0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->cleanupCallbacks()V

    .line 66
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->isShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public requestHide()V
    .locals 3

    .prologue
    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/KeyboardManipulator;->mShowPendingSince:J

    .line 56
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->cleanupCallbacks()V

    .line 57
    iget-object v0, p0, Lcom/android/calendar/KeyboardManipulator;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    iget-object v1, p0, Lcom/android/calendar/KeyboardManipulator;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 60
    return-void
.end method

.method public requestShow()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/KeyboardManipulator;->mShowPendingSince:J

    .line 31
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->showIfNecessary()V

    .line 32
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/KeyboardManipulator;->showIfNecessary()V

    .line 82
    return-void
.end method
