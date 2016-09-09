.class public Lcom/google/api/services/calendar/Calendar$Settings;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/Calendar$Settings$Update;,
        Lcom/google/api/services/calendar/Calendar$Settings$List;,
        Lcom/google/api/services/calendar/Calendar$Settings$Insert;,
        Lcom/google/api/services/calendar/Calendar$Settings$Get;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/calendar/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/Calendar;)V
    .locals 0

    .prologue
    .line 8584
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8694
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Settings$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/calendar/Calendar$Settings$Get;-><init>(Lcom/google/api/services/calendar/Calendar$Settings;Ljava/lang/String;)V

    .line 8695
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 8696
    return-object v0
.end method

.method public insert(Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8799
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;-><init>(Lcom/google/api/services/calendar/Calendar$Settings;Lcom/google/api/services/calendar/model/Setting;)V

    .line 8800
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 8801
    return-object v0
.end method

.method public list()Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8893
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Settings$List;

    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar$Settings$List;-><init>(Lcom/google/api/services/calendar/Calendar$Settings;)V

    .line 8894
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 8895
    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)Lcom/google/api/services/calendar/Calendar$Settings$Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9209
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Settings$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$Update;-><init>(Lcom/google/api/services/calendar/Calendar$Settings;Ljava/lang/String;Lcom/google/api/services/calendar/model/Setting;)V

    .line 9210
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 9211
    return-object v0
.end method
