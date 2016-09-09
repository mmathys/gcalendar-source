.class public Lcom/google/android/gm/drive/OutsideDomainWarningDialog;
.super Landroid/app/DialogFragment;
.source "OutsideDomainWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

.field private mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

.field private mFix:Lcom/google/android/gm/drive/PotentialFix;

.field private mNumFiles:I

.field private mPotentialFixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field

.field private mRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static joinAndBidiFormat(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v3

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 127
    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/google/android/gm/drive/OutsideDomainWarningDialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/drive/PotentialFix;",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/drive/FixPermissionDialogState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gm/drive/OutsideDomainWarningDialog;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;

    invoke-direct {v0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 54
    const-string v2, "fix"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v2, "role"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "dialogState"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    const-string v2, "potentialFixes"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    const-string v2, "numFiles"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    iget-object v3, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mPotentialFixes:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mNumFiles:I

    iget-object v5, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAccountName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->showFixPermissionsDialog(Landroid/app/FragmentManager;Lcom/google/android/gm/drive/FixPermissionDialogState;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 93
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    invoke-virtual {p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    iget-object v4, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mRole:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;->fixPermissions(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/drive/PotentialFix;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    const-string v0, "fix"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/PotentialFix;

    iput-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    .line 70
    const-string v0, "role"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mRole:Ljava/lang/String;

    .line 71
    const-string v0, "dialogState"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/drive/FixPermissionDialogState;

    iput-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mDialogState:Lcom/google/android/gm/drive/FixPermissionDialogState;

    .line 72
    const-string v0, "potentialFixes"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mPotentialFixes:Ljava/util/ArrayList;

    .line 73
    const-string v0, "numFiles"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mNumFiles:I

    .line 74
    const-string v0, "accountName"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAccountName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mFix:Lcom/google/android/gm/drive/PotentialFix;

    invoke-virtual {v0}, Lcom/google/android/gm/drive/PotentialFix;->getOutOfDomainWarningEmailAddresses()Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$plurals;->fix_permissions_outside_domain_warning:I

    iget v4, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mNumFiles:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "<br>"

    .line 80
    invoke-static {v7, v0}, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->joinAndBidiFormat(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 78
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 83
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->fix_permissions_outside_domain_warning_title:I

    .line 84
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->send_anyway:I

    .line 86
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->cancel:I

    .line 87
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public setAttachmentsEditSegment(Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/gm/drive/OutsideDomainWarningDialog;->mAttachmentsEditSegment:Lcom/google/android/calendar/event/edit/segment/AttachmentsEditSegment;

    .line 109
    return-void
.end method
