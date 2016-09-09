.class public Lcom/android/calendar/OverlayFragment$OverlayDialog;
.super Landroid/app/Dialog;
.source "OverlayFragment.java"

# interfaces
.implements Lcom/android/calendar/OverlayFragment$OverlaySetting;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/OverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayDialog"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/calendar/OverlayFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->this$0:Lcom/android/calendar/OverlayFragment;

    .line 162
    invoke-virtual {p1}, Lcom/android/calendar/OverlayFragment;->getDialogTheme()I

    move-result v0

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 164
    iput-object p0, p1, Lcom/android/calendar/OverlayFragment;->mOverlaySetting:Lcom/android/calendar/OverlayFragment$OverlaySetting;

    .line 165
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 187
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->mGestureDetector:Landroid/view/GestureDetector;

    .line 202
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverlaySettingWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public initOverlaySetting(Landroid/view/GestureDetector$OnGestureListener;Z)V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->mGestureDetector:Landroid/view/GestureDetector;

    .line 146
    invoke-virtual {p0, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->setCanceledOnTouchOutside(Z)V

    .line 147
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v0}, Lcom/android/calendar/OverlayFragment;->onDialogBackPressed()V

    .line 180
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->this$0:Lcom/android/calendar/OverlayFragment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/OverlayFragment;->onOverlaySettingCreated(Lcom/android/calendar/OverlayFragment$OverlaySetting;)V

    .line 175
    return-void
.end method

.method public resetOverlaySetting()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$OverlayDialog;->mGestureDetector:Landroid/view/GestureDetector;

    .line 155
    return-void
.end method
