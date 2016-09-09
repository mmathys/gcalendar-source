.class public Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "A11yHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/A11yHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarA11yCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mText:Ljava/lang/CharSequence;

    .line 65
    return-void
.end method

.method private trySendAccessibilityEvent(Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 84
    const/16 v1, 0x20

    .line 85
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public onShown(Landroid/support/design/widget/Snackbar;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;->trySendAccessibilityEvent(Landroid/support/design/widget/Snackbar;Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
