.class public Lcom/android/calendar/event/edit/segment/AccountEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "AccountEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/AbstractTaskEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final ACCOUNT_PICKER_DIALOG_TAG:Ljava/lang/String;

.field private mAccountKeyData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountKeyListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
            ">;"
        }
    .end annotation
.end field

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

.field private mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->ACCOUNT_PICKER_DIALOG_TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    .line 140
    new-instance v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mEditInput:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/AccountEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createTaskAccountsMap(Ljava/util/Map;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;

    .line 157
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 158
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->areTasksSupported(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v1

    .line 126
    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->createTaskAccountsMap(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountsList:Ljava/util/Collection;

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->setAccountsList(Ljava/util/Collection;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 136
    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->ACCOUNT_PICKER_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 120
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 121
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountsList:Ljava/util/Collection;

    .line 122
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 91
    sget v0, Lcom/android/calendar/R$id;->account_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mTextView:Landroid/widget/TextView;

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->setClickable(Z)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->createTaskAccountsMap(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountsList:Ljava/util/Collection;

    .line 104
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->ACCOUNT_PICKER_DIALOG_TAG:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountsList:Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->setAccountsList(Ljava/util/Collection;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    .line 110
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$OnAccountSelectedListener;)Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    .line 112
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->setClickable(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->mAccountKeyListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTaskKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method
