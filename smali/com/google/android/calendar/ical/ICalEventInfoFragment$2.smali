.class Lcom/google/android/calendar/ical/ICalEventInfoFragment$2;
.super Ljava/lang/Object;
.source "ICalEventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # invokes: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->updateEvent()V
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$100(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V

    .line 188
    return-void
.end method
