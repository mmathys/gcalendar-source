.class public Lcom/android/calendar/event/AccessCodePickerDialog;
.super Landroid/app/DialogFragment;
.source "AccessCodePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

.field private mConferenceNumber:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/AccessCodePickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mConferenceNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getSelectedAccessCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/AccessCodePickerDialog;)Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/AccessCodePickerDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/event/AccessCodePickerDialog;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;Ljava/util/Set;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 120
    const-string v1, "key_conference_number"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "key_access_codes"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 123
    return-object v0
.end method

.method private getSelectedAccessCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getSelectedItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getSelectedItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/AccessCode;

    invoke-virtual {v0}, Lcom/android/calendar/event/AccessCode;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/util/Set;)Lcom/android/calendar/event/AccessCodePickerDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;)",
            "Lcom/android/calendar/event/AccessCodePickerDialog;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/android/calendar/event/AccessCodePickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/AccessCodePickerDialog;-><init>()V

    .line 113
    invoke-static {p0, p1}, Lcom/android/calendar/event/AccessCodePickerDialog;->createArguments(Ljava/lang/String;Ljava/util/Set;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_cancel:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logJoinConference(Landroid/content/Context;I)V

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_conference_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mConferenceNumber:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_access_codes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAccessCodes:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;-><init>(Lcom/android/calendar/event/AccessCodePickerDialog;Lcom/android/calendar/event/AccessCodePickerDialog$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$string;->access_code_picker_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    iget-object v3, p0, Lcom/android/calendar/event/AccessCodePickerDialog;->mAdapter:Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;

    .line 53
    invoke-virtual {v3}, Lcom/android/calendar/event/AccessCodePickerDialog$AccessCodeAdapter;->getSelectedItem()I

    move-result v3

    new-instance v4, Lcom/android/calendar/event/AccessCodePickerDialog$3;

    invoke-direct {v4, p0}, Lcom/android/calendar/event/AccessCodePickerDialog$3;-><init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->access_code_picker_dialog_positive_button:I

    new-instance v3, Lcom/android/calendar/event/AccessCodePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/AccessCodePickerDialog$2;-><init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/calendar/event/AccessCodePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/event/AccessCodePickerDialog$1;-><init>(Lcom/android/calendar/event/AccessCodePickerDialog;)V

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/event/AccessCodePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_cancel:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logJoinConference(Landroid/content/Context;I)V

    .line 100
    return-void
.end method
