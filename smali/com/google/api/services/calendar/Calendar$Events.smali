.class public Lcom/google/api/services/calendar/Calendar$Events;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/Calendar$Events$Update;,
        Lcom/google/api/services/calendar/Calendar$Events$Patch;,
        Lcom/google/api/services/calendar/Calendar$Events$List;,
        Lcom/google/api/services/calendar/Calendar$Events$Insert;,
        Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;,
        Lcom/google/api/services/calendar/Calendar$Events$Get;,
        Lcom/google/api/services/calendar/Calendar$Events$Delete;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/calendar/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/Calendar;)V
    .locals 0

    .prologue
    .line 3397
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calendarImport(Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3886
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V

    .line 3887
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3888
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Delete;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3413
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Delete;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3415
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3584
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Get;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 3586
    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4132
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Insert;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V

    .line 4133
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4134
    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4852
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/calendar/Calendar$Events$List;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;)V

    .line 4853
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 4854
    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5805
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/calendar/Calendar$Events$Patch;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V

    .line 5806
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 5807
    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6336
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Events$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/calendar/Calendar$Events$Update;-><init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V

    .line 6337
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 6338
    return-object v0
.end method
