.class public Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;
.super Landroid/app/DialogFragment;
.source "AccountEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/AccountEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountPickerDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;,
        Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;
    }
.end annotation


# instance fields
.field private mAccountsList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAccountsList:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$1;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$1;-><init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;Landroid/content/Context;I)V

    .line 203
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 204
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 210
    sget v0, Lcom/android/calendar/R$layout;->edit_segment_account_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 211
    sget v0, Lcom/android/calendar/R$id;->account_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mList:Landroid/widget/ListView;

    .line 212
    new-instance v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;-><init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    return-object v1
.end method

.method public setAccountsList(Ljava/util/Collection;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/accounts/Account;",
            ">;)",
            "Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;"
        }
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAccountsList:Ljava/util/Collection;

    .line 181
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$AccountsAdapter;->setData()V

    .line 184
    :cond_0
    return-object p0
.end method

.method public setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    .line 190
    return-object p0
.end method
