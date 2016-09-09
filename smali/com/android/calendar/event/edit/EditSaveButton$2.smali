.class Lcom/android/calendar/event/edit/EditSaveButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditSaveButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditSaveButton;->setAnimatedEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditSaveButton;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditSaveButton;Z)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditSaveButton$2;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    iput-boolean p2, p0, Lcom/android/calendar/event/edit/EditSaveButton$2;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton$2;->this$0:Lcom/android/calendar/event/edit/EditSaveButton;

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/EditSaveButton$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditSaveButton;->setEnabled(Z)V

    .line 113
    return-void
.end method
