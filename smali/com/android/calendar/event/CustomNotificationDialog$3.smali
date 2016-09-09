.class Lcom/android/calendar/event/CustomNotificationDialog$3;
.super Ljava/lang/Object;
.source "CustomNotificationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/CustomNotificationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomNotificationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$3;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$3;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButtonPressed:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog;->access$602(Lcom/android/calendar/event/CustomNotificationDialog;Z)Z

    .line 209
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$3;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 210
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$3;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    return-void
.end method
