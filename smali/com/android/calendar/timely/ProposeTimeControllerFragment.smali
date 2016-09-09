.class public Lcom/android/calendar/timely/ProposeTimeControllerFragment;
.super Lcom/android/calendar/timely/FindTimeControllerFragment;
.source "ProposeTimeControllerFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;-><init>()V

    return-void
.end method

.method private getProposeTimeAddNoteFragment()Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "find_time_add_note_fragment"

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    .line 70
    return-object v0
.end method

.method public static newInstance(IJJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/calendar/timely/ProposeTimeControllerFragment;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/timely/ProposeTimeControllerFragment;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v13, Lcom/android/calendar/timely/ProposeTimeControllerFragment;

    invoke-direct {v13}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 53
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v12}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->addArguments(Landroid/os/Bundle;IJJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 56
    invoke-virtual {v13, v0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v13
.end method

.method private transitionToAddNote(Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getState()I

    move-result v0

    .line 128
    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onTimeSlotSelected(Lcom/android/calendar/timely/SuggestionRow;)V

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->setState(I)V

    .line 132
    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 133
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelineSuggestion;->getEndMillis()J

    move-result-wide v2

    .line 132
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->findOrCreateProposeTimeAddNoteFragment(JJ)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setFragmentListener(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private transitionToNoteAdded(JJLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getState()I

    move-result v0

    .line 111
    packed-switch v0, :pswitch_data_0

    .line 118
    sget-object v1, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition to note added state from %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "add_note"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 115
    invoke-virtual/range {p0 .. p5}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->terminateWithSlot(JJLjava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected findOrCreateProposeTimeAddNoteFragment(JJ)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;
    .locals 7

    .prologue
    .line 145
    iget v1, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mEventColor:I

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    .line 146
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->newInstance(IJJLjava/lang/String;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->findSuggestionFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v3, "find_time_add_note_fragment"

    .line 149
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "add_note"

    .line 150
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 152
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-direct {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getProposeTimeAddNoteFragment()Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setFragmentListener(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onCancelled(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->transitionBack()V

    .line 85
    return-void
.end method

.method public onNoteAdded(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;JJLjava/lang/String;)V
    .locals 8

    .prologue
    .line 79
    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->transitionToNoteAdded(JJLjava/lang/String;)V

    .line 80
    return-void
.end method

.method public onTimeSlotSelected(Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 7

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartMillis()J

    move-result-wide v2

    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getEndMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->terminateWithSlot(JJLjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->transitionToAddNote(Lcom/android/calendar/timely/SuggestionRow;)V

    goto :goto_0
.end method

.method protected transitionBack()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->getState()I

    move-result v0

    .line 158
    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBack()V

    .line 169
    :goto_0
    return-void

    .line 160
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->setState(I)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mProposeTimeAddNoteFragment:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->clearFocus()V

    .line 162
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->transitionToListShowData(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
