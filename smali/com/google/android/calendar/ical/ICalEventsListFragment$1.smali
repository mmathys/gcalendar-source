.class Lcom/google/android/calendar/ical/ICalEventsListFragment$1;
.super Ljava/lang/Object;
.source "ICalEventsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalEventsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$1;->this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$1;->this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    # invokes: Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->access$000(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V

    .line 80
    return-void
.end method
