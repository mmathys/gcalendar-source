.class Lcom/android/calendar/event/CustomNotificationDialog$4;
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
    .line 223
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$4;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$4;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # invokes: Lcom/android/calendar/event/CustomNotificationDialog;->showTimePicker()V
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$700(Lcom/android/calendar/event/CustomNotificationDialog;)V

    .line 228
    return-void
.end method
