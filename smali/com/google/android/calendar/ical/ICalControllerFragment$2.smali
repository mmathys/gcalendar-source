.class Lcom/google/android/calendar/ical/ICalControllerFragment$2;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->registerCancel(Lcom/android/calendar/event/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 444
    return-void
.end method
