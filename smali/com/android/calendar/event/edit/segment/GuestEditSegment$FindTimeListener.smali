.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTimeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$FindTimeListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1126
    return-void
.end method
