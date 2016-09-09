.class public Lcom/android/calendar/event/FindTimeActivity;
.super Landroid/app/Activity;
.source "FindTimeActivity.java"

# interfaces
.implements Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;
.implements Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;


# static fields
.field public static final SUPPORTED_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/FindTimeActivity;->SUPPORTED_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ChipRecycler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/FindTimeActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-void
.end method

.method private getAccount(Landroid/content/Intent;)Landroid/accounts/Account;
    .locals 8

    .prologue
    .line 292
    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {p0, p1}, Lcom/google/android/gms/identity/accounts/api/AccountDataUtil;->getAccountData(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/identity/accounts/api/AccountData;

    move-result-object v3

    .line 295
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 296
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_4

    aget-object v0, v4, v1

    .line 297
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/identity/accounts/api/AccountData;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 296
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 300
    :cond_1
    if-nez v2, :cond_3

    const-string v6, "com.google.android.gm.exchange"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 301
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.google"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 302
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 306
    :cond_2
    :goto_1
    return-object v0

    .line 305
    :cond_3
    if-eqz v2, :cond_0

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 309
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->isInSuggestionListState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    sget v1, Lcom/android/calendar/R$string;->accessibility_find_a_time_list_title:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/FindTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->isInSuggestionGridState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->isInSuggestionFilterState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    sget v1, Lcom/android/calendar/R$string;->accessibility_find_a_time_filters_title:I

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/FindTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->isInLoadingState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getLoadingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/calendar/event/FindTimeActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method protected isTestEnvironment()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->goBack()V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    .prologue
    .line 153
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    sget v2, Lcom/android/calendar/R$layout;->find_time_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/FindTimeActivity;->setContentView(I)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/FindTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 158
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 159
    sget-object v2, Lcom/android/calendar/event/FindTimeActivity;->SUPPORTED_TYPES:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FindTimeActivity type must be either TYPE_FIND_A_TIME, TYPE_PROPOSE_NEW_TIME or TYPE_PROPOSE_TIME_FROM_MAIL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/FindTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    .line 165
    const-string v2, "find_time_controller_fragment"

    .line 166
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/FindTimeControllerFragment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    if-nez v2, :cond_4

    .line 168
    const-string v2, "start_millis"

    const-wide/16 v4, 0x0

    invoke-virtual {v8, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 169
    const-string v4, "end_millis"

    const-wide/16 v6, 0x0

    invoke-virtual {v8, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 170
    const-string v6, "timezone"

    invoke-virtual {v8, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    if-nez v9, :cond_1

    .line 172
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 174
    :cond_1
    const-string v6, "event_color"

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/FindTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/calendar/R$color;->default_find_time_event_color:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 174
    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 176
    const-string v7, "event_reference_id"

    .line 177
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 178
    const-string v7, "is_recurring_event"

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 179
    const-string v7, "attendees"

    invoke-virtual {v8, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 180
    const-string v7, "attendee_display_names"

    .line 181
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 183
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/calendar/event/FindTimeActivity;->getAccount(Landroid/content/Intent;)Landroid/accounts/Account;

    move-result-object v8

    .line 184
    const/4 v12, 0x0

    move v14, v12

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v14, v12, :cond_3

    .line 185
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 186
    const/4 v13, 0x0

    .line 187
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    .line 188
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 190
    :cond_2
    iget-object v0, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 191
    new-instance v19, Lcom/android/calendar/timely/FindTimeAttendee;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/android/calendar/timely/FindTimeAttendee;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/calendar/timely/FindTimeAttendee;->setDisplayName(Ljava/lang/String;)Lcom/android/calendar/timely/FindTimeAttendee;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    goto :goto_0

    .line 193
    :cond_3
    if-nez v15, :cond_5

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/FindTimeActivity;->isTestEnvironment()Z

    move-result v12

    .line 194
    invoke-static/range {v2 .. v12}, Lcom/android/calendar/timely/FindTimeControllerFragment;->newInstance(JJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/calendar/timely/FindTimeControllerFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    .line 202
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    const-string v4, "find_time_controller_fragment"

    .line 203
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 205
    invoke-static/range {p0 .. p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 206
    if-eqz p1, :cond_6

    .line 207
    const-string v2, "FindTimeActivity.Recreated"

    invoke-static {v2}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 214
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    instance-of v2, v2, Lcom/android/calendar/timely/ProposeTimeControllerFragment;

    if-eqz v2, :cond_7

    .line 215
    sget v2, Lcom/android/calendar/R$string;->propose_time_title:I

    .line 217
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/FindTimeActivity;->setTitle(I)V

    .line 218
    return-void

    :cond_5
    move v11, v15

    move-wide v12, v2

    move-wide v14, v4

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 199
    invoke-static/range {v11 .. v19}, Lcom/android/calendar/timely/ProposeTimeControllerFragment;->newInstance(IJJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/calendar/timely/ProposeTimeControllerFragment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    goto :goto_1

    .line 209
    :cond_6
    const-string v2, "FindTimeActivity.Created"

    invoke-static {v2}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_7
    sget v2, Lcom/android/calendar/R$string;->find_a_time_title:I

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/FindTimeActivity;->mControllerFragment:Lcom/android/calendar/timely/FindTimeControllerFragment;

    .line 223
    const-string v0, "FindTimeActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method

.method public onFinishedWithCancel()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/FindTimeActivity;->setResult(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/event/FindTimeActivity;->finish()V

    .line 247
    return-void
.end method

.method public onFinishedWithSlot(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "note"

    .line 236
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start_millis"

    .line 237
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "end_millis"

    .line 238
    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "timezone"

    .line 239
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/FindTimeActivity;->setResult(ILandroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/event/FindTimeActivity;->finish()V

    .line 241
    return-void
.end method
