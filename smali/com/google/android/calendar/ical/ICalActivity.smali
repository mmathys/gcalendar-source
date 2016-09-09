.class public Lcom/google/android/calendar/ical/ICalActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "ICalActivity.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;
.implements Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;
.implements Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;
.implements Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/google/android/calendar/ical/ICalActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ChipRecycler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-void
.end method

.method private dismissInfo(Landroid/app/DialogFragment;Z)V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 200
    instance-of v1, v1, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    if-eqz v1, :cond_2

    .line 201
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 202
    instance-of v1, v0, Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    .line 204
    check-cast v0, Landroid/app/DialogFragment;

    move-object p1, v0

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    new-instance v1, Lcom/google/android/calendar/ical/ICalActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/ical/ICalActivity$1;-><init>(Lcom/google/android/calendar/ical/ICalActivity;Landroid/app/DialogFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->finish()V

    goto :goto_0
.end method

.method private initializeFragments(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->hideActionBar()V

    .line 141
    sget v0, Lcom/android/calendar/R$layout;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalActivity;->setContentView(I)V

    .line 142
    sget v0, Lcom/android/calendar/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/google/android/calendar/ical/ICalActivity;->TAG:Ljava/lang/String;

    const-string v1, "Null file Uri!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->finish()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 153
    sget-object v2, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 154
    instance-of v3, v2, Lcom/google/android/calendar/ical/ICalControllerFragment;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    .line 157
    :cond_2
    sget-object v3, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 158
    sget-object v4, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 160
    const-class v5, Lcom/google/android/calendar/ical/ICalControllerFragment;

    .line 163
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 161
    invoke-static {p0, v5, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/ical/ICalControllerFragment;

    .line 166
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 167
    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 170
    :cond_3
    if-eqz v3, :cond_4

    .line 171
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 173
    :cond_4
    if-eqz v4, :cond_5

    .line 174
    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    :cond_5
    sget-object v2, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 177
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    invoke-static {p0}, Lcom/android/calendar/Utils;->showPrePages(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public beforeDeleteInitiated(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public declared-synchronized getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;

    invoke-direct {v0, p0, p0}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;-><init>(Lcom/google/android/calendar/ical/ICalActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity;->mService:Lcom/android/calendar/AsyncQueryService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 186
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalActivity;->initializeFragments(Z)V

    .line 188
    return-void
.end method

.method public onDeleteComplete(Landroid/app/DialogFragment;I)V
    .locals 4

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/ical/ICalActivity;->dismissInfo(Landroid/app/DialogFragment;Z)V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/calendar/ical/ICalActivity$CompletionAwareQueryService;->scheduleOnCompletionHandler(J)V

    .line 321
    return-void
.end method

.method public onEditCancel(Landroid/app/DialogFragment;)V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 275
    if-lez v1, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->finish()V

    goto :goto_0
.end method

.method public onEditComplete(Landroid/app/DialogFragment;Lcom/android/calendar/event/CalendarEventModel;Z)V
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 287
    if-nez v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->finish()V

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 292
    iget-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v1, :cond_1

    .line 309
    :goto_0
    return-void

    .line 298
    :cond_1
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 299
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment;

    .line 301
    if-eqz p3, :cond_2

    .line 302
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen()V

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 307
    :cond_3
    sget-object v0, Lcom/google/android/calendar/ical/ICalActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected fragment tag"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onInfoBack(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalActivity;->dismissInfo(Landroid/app/DialogFragment;Z)V

    .line 267
    return-void
.end method

.method public onInfoCancel(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalActivity;->dismissInfo(Landroid/app/DialogFragment;Z)V

    .line 253
    return-void
.end method

.method public onInfoDoEdit(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 257
    invoke-static {p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance(Ljava/lang/Object;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 260
    sget-object v2, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 262
    return-void
.end method

.method public onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/google/android/calendar/ical/ICalActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to launch bundle"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    sget v0, Lcom/android/calendar/R$string;->task_not_found:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 240
    sget-object v1, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 242
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalControllerFragment;

    if-eqz v1, :cond_0

    .line 243
    check-cast v0, Lcom/google/android/calendar/ical/ICalControllerFragment;

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/ical/ICalActivity;->setIntent(Landroid/content/Intent;)V

    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalActivity;->initializeFragments(Z)V

    .line 195
    return-void
.end method
