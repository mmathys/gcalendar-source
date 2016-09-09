.class Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;
.super Ljava/lang/Object;
.source "TimeZoneEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->showOrHide()V

    .line 61
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
