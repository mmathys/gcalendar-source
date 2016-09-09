.class public Lcom/google/api/services/calendar/Calendar$Calendars;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Calendars"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/Calendar$Calendars$Patch;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/calendar/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/Calendar;)V
    .locals 0

    .prologue
    .line 2533
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Calendars;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public patch(Ljava/lang/String;Lcom/google/api/services/calendar/model/Calendar;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2962
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;-><init>(Lcom/google/api/services/calendar/Calendar$Calendars;Ljava/lang/String;Lcom/google/api/services/calendar/model/Calendar;)V

    .line 2963
    iget-object v1, p0, Lcom/google/api/services/calendar/Calendar$Calendars;->this$0:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/Calendar;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 2964
    return-object v0
.end method
