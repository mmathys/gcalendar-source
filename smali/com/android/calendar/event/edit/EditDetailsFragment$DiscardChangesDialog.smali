.class public Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;
.super Landroid/app/DialogFragment;
.source "EditDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardChangesDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDetailsFragment:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1950
    const-class v0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1957
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1959
    return-void
.end method

.method static synthetic access$2700(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)Lcom/android/calendar/event/edit/EditDetailsFragment;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->mDetailsFragment:Lcom/android/calendar/event/edit/EditDetailsFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1968
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isNewEvent"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1969
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isTask"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1970
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isGroove"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1971
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1972
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1974
    if-eqz v2, :cond_0

    .line 1975
    invoke-static {}, Lcom/android/calendar/groove/GrooveEditManager;->getDiscardMessageId()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1983
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1984
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->discard_dialog_discard:I

    .line 1985
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$2;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->discard_dialog_keep_editing:I

    .line 1997
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog$1;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2005
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1983
    return-object v0

    .line 1976
    :cond_0
    if-eqz v1, :cond_2

    .line 1977
    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_new_task:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1978
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_existing_task:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1980
    :cond_2
    if-eqz v0, :cond_3

    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_new_event:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1981
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->discard_dialog_body_existing_event:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDetailsFragment(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/app/DialogFragment;
    .locals 0

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$DiscardChangesDialog;->mDetailsFragment:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 1963
    return-object p0
.end method
