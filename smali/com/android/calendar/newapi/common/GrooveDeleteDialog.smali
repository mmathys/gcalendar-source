.class public Lcom/android/calendar/newapi/common/GrooveDeleteDialog;
.super Landroid/app/DialogFragment;
.source "GrooveDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;
    }
.end annotation


# instance fields
.field private mDeleteValues:[I

.field private mDialog:Landroid/app/AlertDialog;

.field private mSelectedDeleteValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Fragment;Ljava/lang/String;Z)Lcom/android/calendar/newapi/common/GrooveDeleteDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TargetFragment:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;",
            ">(TTargetFragment;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/calendar/newapi/common/GrooveDeleteDialog;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "ARG_GROOVE_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "ARG_GROOVE_SIMPLIFIED_OPTIONS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    new-instance v1, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;

    invoke-direct {v1}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->setArguments(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 49
    return-object v1
.end method

.method private setPositiveButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 91
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARG_GROOVE_SIMPLIFIED_OPTIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;

    .line 94
    if-eqz v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;->onDeleteConfirmed(Z)V

    .line 104
    :goto_1
    return-void

    .line 96
    :cond_1
    iget v2, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mSelectedDeleteValue:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDeleteValues:[I

    aget v0, v0, p2

    iput v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mSelectedDeleteValue:I

    .line 102
    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->setPositiveButtonEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x104000a

    const/high16 v6, 0x1040000

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARG_GROOVE_SIMPLIFIED_OPTIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->delete_this_event_title:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDialog:Landroid/app/AlertDialog;

    .line 63
    iget-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDialog:Landroid/app/AlertDialog;

    .line 86
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ARG_GROOVE_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$array;->delete_groove_labels:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/calendar/R$array;->delete_repeating_values:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDeleteValues:[I

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 73
    :goto_1
    iget-object v5, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDeleteValues:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDeleteValues:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/calendar/R$string;->delete_recurring_event_title:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v0, v3, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDialog:Landroid/app/AlertDialog;

    .line 85
    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->setPositiveButtonEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method
