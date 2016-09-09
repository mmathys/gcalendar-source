.class Lcom/android/calendar/editor/EditSegment$1;
.super Ljava/lang/Object;
.source "EditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/editor/EditSegment;
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
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/editor/EditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/editor/EditSegment;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/editor/EditSegment$1;->this$0:Lcom/android/calendar/editor/EditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment$1;->this$0:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->showOrHide()V

    .line 116
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/editor/EditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method
