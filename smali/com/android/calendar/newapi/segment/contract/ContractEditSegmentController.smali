.class public Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "ContractEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
.implements Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;
.implements Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener;
.implements Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/SegmentController;",
        "Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;",
        "Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;",
        "Lcom/android/calendar/newapi/segment/common/SingleChoiceDialog$SingleChoiceDialogListener",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/calendar/newapi/segment/contract/ContractEditSegment$Listener;"
    }
.end annotation


# instance fields
.field private mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

.field private mDurationChoiceCreator:Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;

.field private mFrequencyChoiceCreator:Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;

.field private mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;Lcom/google/android/calendar/api/HabitContractModifications;)Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;
    .locals 2

    .prologue
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;)V

    .line 61
    invoke-direct {v0, p3}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->setData(Lcom/google/android/calendar/api/HabitContractModifications;)V

    .line 62
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/android/calendar/R$layout;->newapi_contract_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    return-object v0
.end method

.method private onDurationSelected(I)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->showCustomDurationDialog(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 169
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updateDuration()V

    goto :goto_0
.end method

.method private onFrequencySelected(I)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitContractModifications;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 160
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updateFrequency()V

    .line 161
    return-void
.end method

.method private restoreDialogListeners()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 214
    sget-object v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    if-eqz v2, :cond_0

    .line 216
    check-cast v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    invoke-virtual {v0, p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->setOnPreferredTimesSelectedListener(Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)V

    .line 219
    :cond_0
    sget-object v0, Lcom/android/calendar/event/CustomDurationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/calendar/event/CustomDurationDialog;

    if-eqz v1, :cond_1

    .line 221
    check-cast v0, Lcom/android/calendar/event/CustomDurationDialog;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    .line 223
    :cond_1
    return-void
.end method

.method private setData(Lcom/google/android/calendar/api/HabitContractModifications;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 72
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->setListener(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private showCustomDurationDialog(I)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/android/calendar/event/CustomDurationDialog$Builder;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;-><init>(I)V

    const/16 v1, 0xf0

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_custom_duration_max_error_msg:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_custom_duration_min_error_msg:I

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->build()Lcom/android/calendar/event/CustomDurationDialog;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->show(Landroid/app/FragmentManager;)V

    .line 181
    return-void
.end method

.method private updateDuration()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    .line 99
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->setDurationText(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private updateFrequency()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getNumInstancesPerInterval()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mFrequencyChoiceCreator:Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;

    invoke-virtual {v2, v0}, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->createDisplayString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->setFrequencyText(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private updatePreferredTimes()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    .line 104
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->setPreferredTimesText(Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mFrequencyChoiceCreator:Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;

    .line 78
    new-instance v0, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mDurationChoiceCreator:Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;

    .line 79
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->restoreDialogListeners()V

    .line 80
    return-void
.end method

.method public onCustomDurationDialogCancel()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onCustomDurationSet(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 188
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updateDuration()V

    .line 189
    return-void
.end method

.method public onDialogItemChosen(Ljava/lang/Integer;I)V
    .locals 2

    .prologue
    .line 146
    packed-switch p2, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unknown request code"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->onFrequencySelected(I)V

    .line 156
    :goto_0
    return-void

    .line 151
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->onDurationSelected(I)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onDialogItemChosen(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->onDialogItemChosen(Ljava/lang/Integer;I)V

    return-void
.end method

.method public onDurationClicked()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mDurationChoiceCreator:Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/contract/DurationChoiceCreator;->createList(I)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getLabels()Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getSelectedPosition()I

    move-result v0

    const/4 v3, 0x1

    .line 127
    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onFrequencyClicked()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getNumInstancesPerInterval()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mFrequencyChoiceCreator:Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/contract/FrequencyChoiceCreator;->createList(I)Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getLabels()Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/ChoiceCreator$ChoiceList;->getSelectedPosition()I

    move-result v0

    const/4 v3, 0x0

    .line 114
    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->newIntegerBasedInstance(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/app/Fragment;I)Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SingleChoiceTextDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/segment/common/SingleChoiceTextDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updateFrequency()V

    .line 85
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updateDuration()V

    .line 86
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->updatePreferredTimes()V

    .line 87
    return-void
.end method

.method public onPreferredTimeClicked()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-static {v0, p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->newInstance(Lcom/google/android/calendar/api/HabitContract;Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onPreferredTimesSelected([Z)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    .line 201
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    .line 202
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    .line 203
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 204
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;

    .line 205
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/contract/ContractEditSegmentController;->mContractModifications:Lcom/google/android/calendar/api/HabitContractModifications;

    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/contract/ContractEditSegment;->setPreferredTimesText(Ljava/lang/String;)V

    .line 206
    return-void
.end method
