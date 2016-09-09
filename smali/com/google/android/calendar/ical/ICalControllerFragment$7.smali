.class Lcom/google/android/calendar/ical/ICalControllerFragment$7;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$fragment:Lcom/android/calendar/OverlayFragment;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$fragment:Lcom/android/calendar/OverlayFragment;

    iput-object p4, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 875
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$fragment:Lcom/android/calendar/OverlayFragment;

    iget-object v4, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 876
    if-eqz v1, :cond_0

    .line 877
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment$7;Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    const-wide/16 v0, 0x4b

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 884
    :cond_0
    return-void
.end method
