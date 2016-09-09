.class Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$1;
.super Ljava/lang/Object;
.source "EventTimeEditSegment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    # invokes: Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->onSwitchToggled(Z)V
    invoke-static {v0, p2}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->access$000(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;Z)V

    .line 71
    return-void
.end method
