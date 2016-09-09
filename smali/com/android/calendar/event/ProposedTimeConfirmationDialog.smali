.class public Lcom/android/calendar/event/ProposedTimeConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "ProposedTimeConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    return-object v0
.end method

.method public static newInstance(JJLjava/lang/String;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 55
    const-string v2, "proposed_start_time"

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 56
    const-string v2, "proposed_end_time"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const-string v2, "proposed_note"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    invoke-interface {v0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;->onProposedTimeCancel()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 140
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->proposed_time_confirmation_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 70
    sget v0, Lcom/android/calendar/R$id;->proposed_time:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/android/calendar/R$id;->edit_note:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 72
    new-instance v1, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$1;-><init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "proposed_start_time"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "proposed_end_time"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "proposed_note"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v6, 0x12

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v10

    .line 88
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget v1, Lcom/android/calendar/R$string;->proposed_time_dialog_add_note:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v1, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$2;-><init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v1, Lcom/android/calendar/R$string;->proposed_time_content:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v10, v7, v9

    aput-object v6, v7, v11

    invoke-virtual {p0, v1, v7}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v6, 0x18013

    .line 108
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    .line 109
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->proposed_time_dialog_title:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$4;-><init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog$3;-><init>(Lcom/android/calendar/event/ProposedTimeConfirmationDialog;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    return-object v0

    .line 92
    :cond_0
    sget v1, Lcom/android/calendar/R$string;->proposed_time_dialog_change_note:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setOnProposedTimeConfirmListener(Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->mListener:Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;

    .line 64
    return-void
.end method
