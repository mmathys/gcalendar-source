.class Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment$1;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$1;

.field final synthetic val$currentFocus:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$1;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->val$currentFocus:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->val$currentFocus:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$1;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->val$currentFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 169
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;->val$currentFocus:Landroid/view/View;

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    goto :goto_0
.end method
