.class Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;
.super Ljava/lang/Object;
.source "ProposedTimeConfirmationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    # getter for: Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    invoke-static {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->access$000(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    # getter for: Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    invoke-static {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->access$000(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;->onProposedNoteEditRequest()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 100
    return-void
.end method
