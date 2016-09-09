.class Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;
.super Ljava/lang/Object;
.source "DiscardChangesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/DiscardChangesDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/DiscardChangesDialog;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;->this$0:Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;->this$0:Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$Callback;

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$Callback;->onDiscard()V

    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/DiscardChangesDialog$2;->this$0:Lcom/android/calendar/newapi/screen/DiscardChangesDialog;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/DiscardChangesDialog;->dismiss()V

    .line 60
    return-void
.end method
