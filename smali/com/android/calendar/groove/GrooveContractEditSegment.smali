.class public Lcom/android/calendar/groove/GrooveContractEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "GrooveContractEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;,
        Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/groove/GrooveEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private mButtonDuration:Landroid/widget/Spinner;

.field private mButtonFrequency:Landroid/widget/Spinner;

.field private mButtonPreferredTimes:Landroid/widget/TextView;

.field private mCustomDurationDialogListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

.field private final mDefaultDurationLabels:[Ljava/lang/String;

.field private final mDefaultDurations:[I

.field private mDurationLabels:[Ljava/lang/String;

.field private mDurations:[I

.field private mFrequencyDropDownStrings:[Ljava/lang/String;

.field private mFrequencyStrings:[Ljava/lang/String;

.field private mLastDurationPosition:I

.field private mModifications:Lcom/google/android/calendar/api/HabitModifications;

.field private mPreferredTimesDialogListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 48
    new-instance v0, Lcom/android/calendar/groove/GrooveContractEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$1;-><init>(Lcom/android/calendar/groove/GrooveContractEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mPreferredTimesDialogListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    .line 59
    new-instance v0, Lcom/android/calendar/groove/GrooveContractEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveContractEditSegment$2;-><init>(Lcom/android/calendar/groove/GrooveContractEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mCustomDurationDialogListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->createFrequencyStringArrays(Landroid/content/res/Resources;)V

    .line 77
    sget v1, Lcom/android/calendar/R$array;->duration_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    .line 78
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->createDurationLabelArray(Landroid/content/res/Resources;[I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurationLabels:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/GrooveContractEditSegment;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/GrooveContractEditSegment;)Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/GrooveContractEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/GrooveContractEditSegment;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->refreshDurationSpinner(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/GrooveContractEditSegment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyDropDownStrings:[Ljava/lang/String;

    return-object v0
.end method

.method private static createDurationLabelArray(Landroid/content/res/Resources;[I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 261
    aget v2, p1, v0

    invoke-static {p0, v2}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    array-length v0, p1

    sget v2, Lcom/android/calendar/R$string;->custom_groove_button_label:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    return-object v1
.end method

.method private createFrequencyStringArrays(Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 191
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyStrings:[Ljava/lang/String;

    .line 192
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyDropDownStrings:[Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-gt v2, v5, :cond_1

    .line 196
    if-ne v2, v5, :cond_0

    .line 197
    sget v0, Lcom/android/calendar/R$string;->every_day:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    sget v0, Lcom/android/calendar/R$string;->every_day:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyStrings:[Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    aput-object v1, v3, v4

    .line 204
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyDropDownStrings:[Ljava/lang/String;

    add-int/lit8 v3, v2, -0x1

    aput-object v0, v1, v3

    .line 193
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 200
    :cond_0
    sget v0, Lcom/android/calendar/R$plurals;->groove_n_times_a_week:I

    invoke-static {p1, v0, v2}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget v0, Lcom/android/calendar/R$plurals;->groove_n_times:I

    invoke-static {p1, v0, v2}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_1
    return-void
.end method

.method private getContract()Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    return-object v0
.end method

.method private refreshDurationSpinner(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    aget v2, v2, v0

    .line 101
    if-ne p1, v2, :cond_1

    .line 103
    const/4 v2, 0x1

    .line 104
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    iput-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    .line 105
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurationLabels:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurationLabels:[Ljava/lang/String;

    .line 114
    :goto_1
    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    .line 118
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    aput p1, v1, v0

    .line 122
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDefaultDurations:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveContractEditSegment;->createDurationLabelArray(Landroid/content/res/Resources;[I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurationLabels:[Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurationLabels:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 130
    return-void

    .line 107
    :cond_1
    if-ge p1, v2, :cond_2

    move v2, v1

    .line 110
    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/groove/GrooveEditManager;)Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/android/calendar/groove/GrooveEditManager;->isOwner()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->canBeChanged(Lcom/android/calendar/groove/GrooveEditManager;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mPreferredTimesDialogListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->newInstance(Lcom/google/android/calendar/api/HabitContract;Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 255
    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/groove/GrooveEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->canBeChanged(Lcom/android/calendar/groove/GrooveEditManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iput-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 172
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 173
    sget-object v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    .line 174
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    .line 175
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->setOnPreferredTimesSelectedListener(Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)V

    .line 178
    :cond_2
    sget-object v0, Lcom/android/calendar/event/CustomDurationDialog;->TAG:Ljava/lang/String;

    .line 179
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CustomDurationDialog;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, v2}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->onDisposeInput(Lcom/android/calendar/groove/GrooveEditManager;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 84
    sget v0, Lcom/android/calendar/R$id;->button_frequency:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    .line 85
    sget v0, Lcom/android/calendar/R$id;->button_duration:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    .line 86
    sget v0, Lcom/android/calendar/R$id;->button_preferred_times:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 212
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 214
    add-int/lit8 v0, p3, 0x1

    .line 215
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContractModifications;->getNumInstancesPerInterval()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 216
    add-int/lit8 v0, p3, 0x1

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitContractModifications;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 221
    iput p3, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mLastDurationPosition:I

    .line 222
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mDurations:[I

    aget v0, v0, p3

    .line 223
    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 224
    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mLastDurationPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    .line 231
    new-instance v1, Lcom/android/calendar/event/CustomDurationDialog$Builder;

    invoke-direct {v1, v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;-><init>(I)V

    const/16 v0, 0xf0

    .line 232
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_custom_duration_max_error_msg:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->goal_custom_duration_min_error_msg:I

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->build()Lcom/android/calendar/event/CustomDurationDialog;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mCustomDurationDialogListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    .line 238
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/groove/GrooveEditManager;)V
    .locals 6

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->canBeChanged(Lcom/android/calendar/groove/GrooveEditManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/groove/GrooveEditManager;->getHabitModifications()Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 139
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;

    iget-object v4, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mFrequencyStrings:[Ljava/lang/String;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/android/calendar/groove/GrooveContractEditSegment$FrequencyAdapter;-><init>(Lcom/android/calendar/groove/GrooveContractEditSegment;Landroid/content/Context;Landroid/widget/Spinner;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 144
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonFrequency:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonPreferredTimes:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 146
    invoke-static {v2, v0}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mButtonDuration:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveContractEditSegment;->refreshDurationSpinner(I)V

    .line 151
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 152
    sget-object v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->TAG:Ljava/lang/String;

    .line 153
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;

    .line 154
    if-eqz v0, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mPreferredTimesDialogListener:Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog;->setOnPreferredTimesSelectedListener(Lcom/android/calendar/groove/GrooveContractEditSegment$PreferredTimesDialog$OnPreferredTimesSelectedListener;)V

    .line 158
    :cond_2
    sget-object v0, Lcom/android/calendar/event/CustomDurationDialog;->TAG:Ljava/lang/String;

    .line 159
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CustomDurationDialog;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveContractEditSegment;->mCustomDurationDialogListener:Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/android/calendar/groove/GrooveEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveContractEditSegment;->onSetInput(Lcom/android/calendar/groove/GrooveEditManager;)V

    return-void
.end method
