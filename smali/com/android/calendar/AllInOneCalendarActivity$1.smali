.class Lcom/android/calendar/AllInOneCalendarActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$1;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$1;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->showFeedback(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$100(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/content/Intent;)V

    .line 323
    return-void
.end method
