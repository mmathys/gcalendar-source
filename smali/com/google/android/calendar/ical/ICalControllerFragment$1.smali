.class Lcom/google/android/calendar/ical/ICalControllerFragment$1;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->onAllDataLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$fm:Landroid/app/FragmentManager;

.field final synthetic val$listFragment:Lcom/google/android/calendar/ical/ICalEventsListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Landroid/app/FragmentManager;Lcom/google/android/calendar/ical/ICalEventsListFragment;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$1;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$1;->val$fm:Landroid/app/FragmentManager;

    iput-object p3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$1;->val$listFragment:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$1;->val$fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 411
    const v1, 0x1020002

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$1;->val$listFragment:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    sget-object v3, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 412
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 413
    return-void
.end method
