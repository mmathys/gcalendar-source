.class Lcom/android/calendar/event/CustomDurationDialog$4;
.super Ljava/lang/Object;
.source "CustomDurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/CustomDurationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomDurationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomDurationDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/calendar/event/CustomDurationDialog$4;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$4;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    # getter for: Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
    invoke-static {v0}, Lcom/android/calendar/event/CustomDurationDialog;->access$200(Lcom/android/calendar/event/CustomDurationDialog;)Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$4;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    # getter for: Lcom/android/calendar/event/CustomDurationDialog;->mListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
    invoke-static {v0}, Lcom/android/calendar/event/CustomDurationDialog;->access$200(Lcom/android/calendar/event/CustomDurationDialog;)Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/CustomDurationDialog$4;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    # invokes: Lcom/android/calendar/event/CustomDurationDialog;->getCustomDurationInMinutes()I
    invoke-static {v1}, Lcom/android/calendar/event/CustomDurationDialog;->access$300(Lcom/android/calendar/event/CustomDurationDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;->onCustomDurationSet(I)V

    .line 135
    :cond_0
    return-void
.end method
