.class Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;
.super Ljava/lang/Object;
.source "ProposedTimeConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    # getter for: Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    invoke-static {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->access$000(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;->this$0:Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    # getter for: Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    invoke-static {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->access$000(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;->onProposedTimeConfirm()V

    .line 121
    :cond_0
    return-void
.end method
