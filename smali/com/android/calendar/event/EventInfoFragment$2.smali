.class Lcom/android/calendar/event/EventInfoFragment$2;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$2;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$2;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method
