.class Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->getSpeedDial()Lcom/android/calendar/SpeedDialLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;)V
    .locals 0

    .prologue
    .line 3279
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndSpeedDialFadeOut()V
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->removeSpeedDial()V

    .line 3283
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack$1;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;

    iget-object v0, v0, Lcom/android/calendar/AllInOneCalendarActivity$MainFabStack;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1100(Lcom/android/calendar/AllInOneCalendarActivity;)V

    .line 3284
    return-void
.end method
