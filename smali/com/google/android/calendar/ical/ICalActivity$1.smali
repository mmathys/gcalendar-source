.class Lcom/google/android/calendar/ical/ICalActivity$1;
.super Ljava/lang/Object;
.source "ICalActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalActivity;->dismissInfo(Landroid/app/DialogFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalActivity;

.field final synthetic val$dialogToDismiss:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalActivity;Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalActivity$1;->this$0:Lcom/google/android/calendar/ical/ICalActivity;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalActivity$1;->val$dialogToDismiss:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalActivity$1;->val$dialogToDismiss:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 213
    return-void
.end method
