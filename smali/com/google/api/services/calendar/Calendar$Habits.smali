.class public Lcom/google/api/services/calendar/Calendar$Habits;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Habits"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/Calendar$Habits$Patch;,
        Lcom/google/api/services/calendar/Calendar$Habits$List;,
        Lcom/google/api/services/calendar/Calendar$Habits$Insert;,
        Lcom/google/api/services/calendar/Calendar$Habits$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/calendar/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/Calendar;)V
    .locals 0

    .prologue
    .line 7483
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7500
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Habits$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$Delete;-><init>(Lcom/google/api/services/calendar/Calendar$Habits;Ljava/lang/String;Ljava/lang/String;)V

    .line 7501
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7502
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/api/services/calendar/Calendar$Habits$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7783
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Habits$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$Insert;-><init>(Lcom/google/api/services/calendar/Calendar$Habits;Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)V

    .line 7784
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7785
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7894
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Habits$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/calendar/Calendar$Habits$List;-><init>(Lcom/google/api/services/calendar/Calendar$Habits;Ljava/lang/String;)V

    .line 7895
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 7896
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/api/services/calendar/Calendar$Habits$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8110
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Habits$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/calendar/Calendar$Habits$Patch;-><init>(Lcom/google/api/services/calendar/Calendar$Habits;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Habit;)V

    .line 8111
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 8112
    return-object v0
.end method
