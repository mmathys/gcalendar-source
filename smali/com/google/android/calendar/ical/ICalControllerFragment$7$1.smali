.class Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/ical/ICalControllerFragment$7;

.field final synthetic val$fOld:Landroid/app/Fragment;

.field final synthetic val$fm:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment$7;Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;->this$1:Lcom/google/android/calendar/ical/ICalControllerFragment$7;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;->val$fm:Landroid/app/FragmentManager;

    iput-object p3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;->val$fOld:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;->val$fm:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$7$1;->val$fOld:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 881
    return-void
.end method
