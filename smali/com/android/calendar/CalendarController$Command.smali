.class public Lcom/android/calendar/CalendarController$Command;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$Command$Handler;
    }
.end annotation


# instance fields
.field public endTime:Lcom/android/calendar/time/Time;

.field public extraLong:J

.field public id:J

.field public selectedTime:Lcom/android/calendar/time/Time;

.field public startTime:Lcom/android/calendar/time/Time;

.field public type:J

.field public uri:Landroid/net/Uri;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide p1, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    .line 147
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 176
    const-string v0, "Unknown"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 180
    const-string v0, "Go to time/event"

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, ": uri="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v0, p0, Lcom/android/calendar/CalendarController$Command;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/CalendarController$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, ": id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, ", selected="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, ", start="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, p0, Lcom/android/calendar/CalendarController$Command;->startTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, ", end="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v0, p0, Lcom/android/calendar/CalendarController$Command;->endTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    const-string v0, ", x="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v0, p0, Lcom/android/calendar/CalendarController$Command;->x:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v0, ", y="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v0, p0, Lcom/android/calendar/CalendarController$Command;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 182
    const-string v0, "Refresh events"

    goto :goto_0

    .line 183
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 184
    const-string v0, "Gone home"

    goto :goto_0

    .line 185
    :cond_3
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x400

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 186
    const-string v0, "Update title"

    goto :goto_0

    .line 187
    :cond_4
    iget-wide v2, p0, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 188
    const-string v0, "Update alternate month range"

    goto/16 :goto_0

    .line 192
    :cond_5
    const-string v0, ""

    goto :goto_1
.end method
