.class public Lcom/android/datetimepicker/time/TimePickerDialog;
.super Lcom/android/datetimepicker/DialogFragmentWithListener;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/android/datetimepicker/time/TimePickerDialog$Node;,
        Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/time/TimePickerDialog;IZZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/datetimepicker/time/TimePickerDialog;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/datetimepicker/time/TimePickerDialog;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/datetimepicker/time/TimePickerDialog;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/datetimepicker/time/TimePickerDialog;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/datetimepicker/time/TimePickerDialog;I)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    :cond_1
    :goto_0
    return v0

    .line 596
    :cond_2
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v2

    if-nez v2, :cond_3

    .line 598
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    goto :goto_0

    .line 602
    :cond_3
    invoke-static {p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v2

    .line 603
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 605
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    .line 607
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 650
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 653
    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 661
    iput-boolean v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 662
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setTime(II)V

    .line 665
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    :cond_1
    if-eqz p1, :cond_2

    .line 671
    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 674
    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 20

    .prologue
    .line 827
    const/4 v3, 0x7

    .line 828
    const/16 v4, 0x8

    .line 829
    const/16 v5, 0x9

    .line 830
    const/16 v6, 0xa

    .line 831
    const/16 v7, 0xb

    .line 832
    const/16 v8, 0xc

    .line 833
    const/16 v9, 0xd

    .line 834
    const/16 v10, 0xe

    .line 835
    const/16 v11, 0xf

    .line 836
    const/16 v12, 0x10

    .line 839
    new-instance v13, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v14, 0x0

    new-array v14, v14, [I

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 840
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v13, :cond_0

    .line 842
    new-instance v13, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v3, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aput v5, v14, v15

    const/4 v15, 0x3

    aput v6, v14, v15

    const/4 v15, 0x4

    aput v7, v14, v15

    const/4 v15, 0x5

    aput v8, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 843
    new-instance v14, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v15, 0xa

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v3, v15, v16

    const/16 v16, 0x1

    aput v4, v15, v16

    const/16 v16, 0x2

    aput v5, v15, v16

    const/16 v16, 0x3

    aput v6, v15, v16

    const/16 v16, 0x4

    aput v7, v15, v16

    const/16 v16, 0x5

    aput v8, v15, v16

    const/16 v16, 0x6

    aput v9, v15, v16

    const/16 v16, 0x7

    aput v10, v15, v16

    const/16 v16, 0x8

    aput v11, v15, v16

    const/16 v16, 0x9

    aput v12, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 845
    invoke-virtual {v13, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 848
    new-instance v15, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 852
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/16 v18, 0x1

    aput v4, v17, v18

    const/16 v18, 0x2

    aput v5, v17, v18

    const/16 v18, 0x3

    aput v6, v17, v18

    const/16 v18, 0x4

    aput v7, v17, v18

    const/16 v18, 0x5

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 853
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 855
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 858
    new-instance v17, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v9, v18, v19

    const/16 v19, 0x1

    aput v10, v18, v19

    const/16 v19, 0x2

    aput v11, v18, v19

    const/16 v19, 0x3

    aput v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 860
    invoke-virtual/range {v16 .. v17}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 863
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v9, v17, v18

    const/16 v18, 0x1

    aput v10, v17, v18

    const/16 v18, 0x2

    aput v11, v17, v18

    const/16 v18, 0x3

    aput v12, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 864
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 866
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 869
    new-instance v15, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v5, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 873
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/4 v3, 0x1

    aput v4, v17, v3

    const/4 v3, 0x2

    aput v5, v17, v3

    const/4 v3, 0x3

    aput v6, v17, v3

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 874
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 876
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 879
    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v7, v4, v5

    const/4 v5, 0x1

    aput v8, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 880
    invoke-virtual {v15, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 882
    invoke-virtual {v3, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 885
    new-instance v3, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v8, v4, v5

    const/4 v5, 0x3

    aput v9, v4, v5

    const/4 v5, 0x4

    aput v10, v4, v5

    const/4 v5, 0x5

    aput v11, v4, v5

    const/4 v5, 0x6

    aput v12, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v4, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 888
    invoke-virtual {v3, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 951
    :goto_0
    return-void

    .line 892
    :cond_0
    new-instance v13, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v16

    aput v16, v14, v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 895
    new-instance v14, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v4, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 898
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 901
    new-instance v15, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 902
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 904
    invoke-virtual {v15, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 907
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v3, v17, v18

    const/16 v18, 0x1

    aput v4, v17, v18

    const/16 v18, 0x2

    aput v5, v17, v18

    const/16 v18, 0x3

    aput v6, v17, v18

    const/16 v18, 0x4

    aput v7, v17, v18

    const/16 v18, 0x5

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 908
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 910
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 914
    new-instance v17, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v3, v18, v19

    const/16 v19, 0x1

    aput v4, v18, v19

    const/16 v19, 0x2

    aput v5, v18, v19

    const/16 v19, 0x3

    aput v6, v18, v19

    const/16 v19, 0x4

    aput v7, v18, v19

    const/16 v19, 0x5

    aput v8, v18, v19

    const/16 v19, 0x6

    aput v9, v18, v19

    const/16 v19, 0x7

    aput v10, v18, v19

    const/16 v19, 0x8

    aput v11, v18, v19

    const/16 v19, 0x9

    aput v12, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 915
    invoke-virtual/range {v16 .. v17}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 917
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 920
    new-instance v16, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v9, v17, v18

    const/16 v18, 0x1

    aput v10, v17, v18

    const/16 v18, 0x2

    aput v11, v17, v18

    const/16 v18, 0x3

    aput v12, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 921
    invoke-virtual/range {v15 .. v16}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 923
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 926
    new-instance v15, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v6, v16, v17

    const/16 v17, 0x1

    aput v7, v16, v17

    const/16 v17, 0x2

    aput v8, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 927
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 930
    new-instance v14, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    const/16 v17, 0x3

    aput v6, v16, v17

    const/16 v17, 0x4

    aput v7, v16, v17

    const/16 v17, 0x5

    aput v8, v16, v17

    const/16 v17, 0x6

    aput v9, v16, v17

    const/16 v17, 0x7

    aput v10, v16, v17

    const/16 v17, 0x8

    aput v11, v16, v17

    const/16 v17, 0x9

    aput v12, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 931
    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 933
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 936
    new-instance v14, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v15, 0x8

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v5, v15, v16

    const/16 v16, 0x1

    aput v6, v15, v16

    const/16 v16, 0x2

    aput v7, v15, v16

    const/16 v16, 0x3

    aput v8, v15, v16

    const/16 v16, 0x4

    aput v9, v15, v16

    const/16 v16, 0x5

    aput v10, v15, v16

    const/16 v16, 0x6

    aput v11, v15, v16

    const/16 v16, 0x7

    aput v12, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 939
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 942
    new-instance v15, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/16 v17, 0x1

    aput v4, v16, v17

    const/16 v17, 0x2

    aput v5, v16, v17

    const/16 v17, 0x3

    aput v6, v16, v17

    const/16 v17, 0x4

    aput v7, v16, v17

    const/16 v17, 0x5

    aput v8, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 943
    invoke-virtual {v14, v15}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 946
    new-instance v14, Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    const/16 v16, 0xa

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v3, v16, v17

    const/4 v3, 0x1

    aput v4, v16, v3

    const/4 v3, 0x2

    aput v5, v16, v3

    const/4 v3, 0x3

    aput v6, v16, v3

    const/4 v3, 0x4

    aput v7, v16, v3

    const/4 v3, 0x5

    aput v8, v16, v3

    const/4 v3, 0x6

    aput v9, v16, v3

    const/4 v3, 0x7

    aput v10, v16, v3

    const/16 v3, 0x8

    aput v11, v16, v3

    const/16 v3, 0x9

    aput v12, v16, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;[I)V

    .line 947
    invoke-virtual {v15, v14}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    .line 949
    invoke-virtual {v14, v13}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/android/datetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_0
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 792
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v0, v2, :cond_1

    .line 794
    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    move v0, v1

    .line 797
    :goto_0
    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 798
    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 799
    iget-object v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 800
    if-eq v4, v5, :cond_3

    .line 801
    new-array v0, v8, [C

    aput-char v4, v0, v1

    aput-char v5, v0, v7

    invoke-virtual {v3, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 804
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 805
    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    .line 813
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    .line 814
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 819
    :goto_2
    return v0

    .line 807
    :cond_2
    const-string v0, "TimePickerDialog"

    const-string v1, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 797
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_4
    if-ne p1, v7, :cond_5

    .line 816
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_2

    :cond_5
    move v0, v2

    .line 819
    goto :goto_2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 751
    .line 753
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 755
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    move v4, v5

    move v6, v0

    :goto_1
    move v7, v3

    move v8, v3

    move v3, v4

    .line 764
    :goto_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_5

    .line 765
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 766
    if-ne v3, v4, :cond_2

    move v8, v0

    .line 764
    :cond_0
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 757
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_6

    move v0, v2

    .line 758
    goto :goto_0

    .line 768
    :cond_2
    add-int/lit8 v9, v4, 0x1

    if-ne v3, v9, :cond_3

    .line 769
    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v8, v9

    .line 770
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 771
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_3

    .line 773
    :cond_3
    add-int/lit8 v9, v4, 0x2

    if-ne v3, v9, :cond_4

    move v7, v0

    .line 774
    goto :goto_3

    .line 775
    :cond_4
    add-int/lit8 v9, v4, 0x3

    if-ne v3, v9, :cond_0

    .line 776
    mul-int/lit8 v9, v0, 0xa

    add-int/2addr v7, v9

    .line 777
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 778
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_3

    .line 783
    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v7, v0, v1

    aput v8, v0, v2

    aput v6, v0, v5

    .line 784
    return-object v0

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v4, v2

    move v6, v3

    goto :goto_1
.end method

.method private static getValFromKeyCode(I)I
    .locals 1

    .prologue
    .line 716
    packed-switch p0, :pswitch_data_0

    .line 738
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 718
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 720
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 722
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 724
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 726
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 728
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 730
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 732
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 734
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 736
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 635
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_1

    .line 638
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v2

    .line 639
    aget v3, v2, v1

    if-ltz v3, :cond_0

    aget v3, v2, v0

    if-ltz v3, :cond_0

    aget v2, v2, v0

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_0

    .line 643
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 639
    goto :goto_0

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 644
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    .line 643
    goto :goto_0
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    .line 622
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/android/datetimepicker/time/TimePickerDialog$Node;

    move-result-object v0

    .line 624
    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    .line 628
    :goto_1
    return v0

    :cond_0
    move-object v1, v0

    .line 627
    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;-><init>()V

    .line 142
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/time/TimePickerDialog;->initialize(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 143
    return-object v0
.end method

.method private processKeyUp(I)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 506
    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->dismiss()V

    move v0, v1

    .line 569
    :goto_0
    return v0

    .line 509
    :cond_1
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    .line 510
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_8

    .line 511
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    :cond_2
    move v0, v1

    .line 514
    goto :goto_0

    .line 516
    :cond_3
    const/16 v0, 0x42

    if-ne p1, v0, :cond_7

    .line 517
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_5

    .line 518
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 519
    goto :goto_0

    .line 521
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 523
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_6

    .line 524
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    .line 525
    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 524
    invoke-interface {v0, v2, v3, v4}, Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->dismiss()V

    move v0, v1

    .line 528
    goto :goto_0

    .line 529
    :cond_7
    const/16 v0, 0x43

    if-ne p1, v0, :cond_b

    .line 530
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_8

    .line 531
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 532
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 534
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 535
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 541
    :goto_1
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 542
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {v3, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 543
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_8
    move v0, v2

    .line 569
    goto :goto_0

    .line 536
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 537
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    goto :goto_1

    .line 539
    :cond_a
    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_b
    const/4 v0, 0x7

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    const/16 v0, 0x9

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa

    if-eq p1, v0, :cond_c

    const/16 v0, 0xb

    if-eq p1, v0, :cond_c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    const/16 v0, 0xe

    if-eq p1, v0, :cond_c

    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    const/16 v0, 0x10

    if-eq p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_8

    .line 552
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-eq p1, v0, :cond_c

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 553
    :cond_c
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v0, :cond_e

    .line 554
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_d

    .line 556
    const-string v0, "TimePickerDialog"

    const-string v2, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 557
    goto/16 :goto_0

    .line 559
    :cond_d
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    move v0, v1

    .line 561
    goto/16 :goto_0

    .line 564
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 565
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_f
    move v0, v1

    .line 567
    goto/16 :goto_0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 5

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 469
    if-nez p1, :cond_3

    .line 470
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    .line 471
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 472
    rem-int/lit8 v0, v0, 0xc

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 475
    if-eqz p4, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object v2, v0

    .line 488
    :goto_0
    if-nez p1, :cond_5

    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    move v1, v0

    .line 489
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 490
    :goto_2
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    const v0, 0x3f59999a    # 0.85f

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v0, v1}, Lcom/android/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 494
    if-eqz p3, :cond_2

    .line 495
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 497
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 498
    return-void

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    .line 481
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 482
    if-eqz p4, :cond_4

    .line 483
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object v2, v0

    goto :goto_0

    .line 488
    :cond_5
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    move v1, v0

    goto :goto_1

    .line 489
    :cond_6
    iget v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto :goto_2
.end method

.method private setHour(IZ)V
    .locals 4

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v0, :cond_2

    .line 436
    const-string v0, "%02d"

    .line 445
    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    if-eqz p2, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 451
    :cond_1
    return-void

    .line 438
    :cond_2
    const-string v0, "%d"

    .line 439
    rem-int/lit8 p1, p1, 0xc

    .line 440
    if-nez p1, :cond_0

    .line 441
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setMinute(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 454
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 457
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 459
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 583
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 584
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 586
    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    :goto_0
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDisplay(Z)V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 684
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 685
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    .line 686
    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 687
    invoke-direct {p0, v2, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 688
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 689
    iget-boolean v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_0

    .line 690
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 693
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 713
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 690
    goto :goto_0

    .line 695
    :cond_3
    new-array v3, v8, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    .line 696
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v4

    .line 697
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "%02d"

    .line 698
    :goto_2
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "%02d"

    .line 699
    :goto_3
    aget v5, v4, v0

    if-ne v5, v7, :cond_6

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 701
    :goto_4
    aget v5, v4, v1

    if-ne v5, v7, :cond_7

    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 703
    :goto_5
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_1

    .line 710
    aget v0, v4, v8

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 697
    :cond_4
    const-string v2, "%2d"

    goto :goto_2

    .line 698
    :cond_5
    const-string v3, "%2d"

    goto :goto_3

    .line 700
    :cond_6
    new-array v5, v1, [Ljava/lang/Object;

    aget v6, v4, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 702
    :cond_7
    new-array v5, v1, [Ljava/lang/Object;

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public initialize(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 150
    iput p2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 151
    iput p3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 152
    iput-boolean p4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 155
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onCreate(Landroid/os/Bundle;)V

    .line 194
    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "minute"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_24_hour_view"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 198
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 199
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 200
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 201
    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 163
    instance-of v2, v0, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;

    check-cast v0, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-direct {v2, v0}, Lcom/android/datetimepicker/time/TimePickerCompat$LibraryTimeSetListenerWrapper;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    iput-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 167
    :cond_0
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 210
    sget v1, Lcom/android/datetimepicker/R$layout;->time_picker_dialog:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 211
    new-instance v7, Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;Lcom/android/datetimepicker/time/TimePickerDialog$1;)V

    .line 212
    sget v1, Lcom/android/datetimepicker/R$id;->time_picker_dialog:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 215
    sget v1, Lcom/android/datetimepicker/R$string;->hour_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 216
    sget v1, Lcom/android/datetimepicker/R$string;->select_hours:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 217
    sget v1, Lcom/android/datetimepicker/R$string;->minute_picker_description:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 218
    sget v1, Lcom/android/datetimepicker/R$string;->select_minutes:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 219
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/datetimepicker/R$color;->red:I

    :goto_0
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 220
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_3

    .line 221
    const v1, 0x106000b

    :goto_1
    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    .line 223
    sget v1, Lcom/android/datetimepicker/R$id;->hours:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 224
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 225
    sget v1, Lcom/android/datetimepicker/R$id;->hour_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 226
    sget v1, Lcom/android/datetimepicker/R$id;->minutes_space:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 227
    sget v1, Lcom/android/datetimepicker/R$id;->minutes:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 229
    sget v1, Lcom/android/datetimepicker/R$id;->ampm_label:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 230
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 231
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 232
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 233
    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 235
    new-instance v1, Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    .line 237
    sget v1, Lcom/android/datetimepicker/R$id;->time_picker:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    .line 238
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 239
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v7}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    iget v4, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    iget v5, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    iget-boolean v6, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/android/datetimepicker/HapticFeedbackController;IIZ)V

    .line 243
    const/4 v1, 0x0

    .line 244
    if-eqz p3, :cond_0

    const-string v2, "current_item_showing"

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-string v1, "current_item_showing"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 248
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 249
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 251
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/TimePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/TimePickerDialog$1;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/TimePickerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/TimePickerDialog$2;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    sget v1, Lcom/android/datetimepicker/R$id;->done_button:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    .line 267
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/datetimepicker/time/TimePickerDialog$3;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/TimePickerDialog$3;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 285
    sget v1, Lcom/android/datetimepicker/R$id;->ampm_hitspace:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 286
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v1, :cond_4

    .line 287
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 291
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    sget v1, Lcom/android/datetimepicker/R$id;->separator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 293
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 314
    iget v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 315
    iget v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 318
    sget v1, Lcom/android/datetimepicker/R$string;->time_placeholder:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 319
    sget v1, Lcom/android/datetimepicker/R$string;->deleted_key:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    .line 321
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    iput v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 322
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 323
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v1, :cond_6

    .line 324
    const-string v1, "typed_times"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 325
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 326
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 332
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setTheme(Landroid/content/Context;Z)V

    .line 334
    const v1, 0x106000b

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 335
    sget v1, Lcom/android/datetimepicker/R$color;->circle_background:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 336
    sget v1, Lcom/android/datetimepicker/R$color;->line_background:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 337
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 338
    sget v1, Lcom/android/datetimepicker/R$color;->done_text_color:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 339
    sget v12, Lcom/android/datetimepicker/R$drawable;->done_background_color:I

    .line 341
    sget v1, Lcom/android/datetimepicker/R$color;->dark_gray:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 342
    sget v1, Lcom/android/datetimepicker/R$color;->light_gray:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 343
    sget v1, Lcom/android/datetimepicker/R$color;->line_dark:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 344
    sget v1, Lcom/android/datetimepicker/R$color;->done_text_color_dark:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 345
    sget v11, Lcom/android/datetimepicker/R$drawable;->done_background_color_dark:I

    .line 348
    sget v1, Lcom/android/datetimepicker/R$id;->time_display_background:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 349
    sget v1, Lcom/android/datetimepicker/R$id;->time_display:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v14, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v14, :cond_8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 350
    sget v1, Lcom/android/datetimepicker/R$id;->separator:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    sget v1, Lcom/android/datetimepicker/R$id;->ampm_label:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    sget v1, Lcom/android/datetimepicker/R$id;->line:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_b

    move v1, v5

    :goto_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_c

    move-object v1, v7

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 354
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_d

    move v1, v9

    :goto_a
    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    .line 355
    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v1, :cond_e

    move v1, v11

    :goto_b
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    return-object v13

    .line 219
    :cond_2
    sget v1, Lcom/android/datetimepicker/R$color;->blue:I

    goto/16 :goto_0

    .line 221
    :cond_3
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    goto/16 :goto_1

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_5

    const/4 v1, 0x0

    :goto_c
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 297
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v2, Lcom/android/datetimepicker/time/TimePickerDialog$4;

    invoke-direct {v2, p0}, Lcom/android/datetimepicker/time/TimePickerDialog$4;-><init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 296
    :cond_5
    const/4 v1, 0x1

    goto :goto_c

    .line 327
    :cond_6
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_3

    :cond_7
    move v1, v3

    .line 348
    goto/16 :goto_4

    :cond_8
    move v2, v3

    .line 349
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 350
    goto :goto_6

    :cond_a
    move v3, v4

    .line 351
    goto :goto_7

    :cond_b
    move v1, v6

    .line 352
    goto :goto_8

    :cond_c
    move-object v1, v8

    .line 353
    goto :goto_9

    :cond_d
    move v1, v10

    .line 354
    goto :goto_a

    :cond_e
    move v1, v12

    .line 355
    goto :goto_b
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onPause()V

    .line 368
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->stop()V

    .line 369
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onResume()V

    .line 362
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->start()V

    .line 363
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    .line 392
    const-string v0, "hour_of_day"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v0, "minute"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 397
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 400
    :cond_0
    const-string v0, "dark_theme"

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    :cond_1
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 409
    if-nez p1, :cond_2

    .line 410
    invoke-direct {p0, p2, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 411
    const-string v0, "%d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 413
    invoke-direct {p0, v3, v3, v3, v4}, Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 414
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 431
    :cond_0
    :goto_1
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    :cond_2
    if-ne p1, v3, :cond_3

    .line 421
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 422
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 424
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto :goto_1

    .line 425
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_1
.end method

.method public setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 183
    return-void
.end method

.method public setStartTime(II)V
    .locals 1

    .prologue
    .line 186
    iput p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 187
    iput p2, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 189
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 373
    return-void
.end method
