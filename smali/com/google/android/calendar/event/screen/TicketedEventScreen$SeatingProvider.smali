.class Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;
.super Ljava/lang/Object;
.source "TicketedEventScreen.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/screen/TicketedEventScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeatingProvider"
.end annotation


# instance fields
.field final mResources:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    .line 161
    return-void
.end method


# virtual methods
.method public getStringData()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->access$100(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->access$100(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservation;->getSeatCount()Ljava/lang/Integer;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    .line 169
    # getter for: Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;
    invoke-static {v1}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->access$100(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/EventReservation;->getSeatingInformations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 170
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    .line 171
    # getter for: Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mEventReservation:Lcom/google/api/services/calendar/model/EventReservation;
    invoke-static {v1}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->access$100(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/EventReservation;->getSeatingInformations()Ljava/util/List;

    move-result-object v1

    .line 172
    iget-object v5, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/calendar/R$string;->ticket_delimiter:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    iget-object v6, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/calendar/R$string;->seat_delimiter:I

    .line 174
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    iget-object v7, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$plurals;->ticket_count:I

    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v2

    .line 175
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getSection()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 181
    iget-object v9, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/calendar/R$string;->seating_section:I

    new-array v11, v3, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getSection()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 181
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getRow()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 186
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    iget-object v9, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/calendar/R$string;->seating_row:I

    new-array v11, v3, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getRow()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 188
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getSeat()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_3
    iget-object v9, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$SeatingProvider;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/android/calendar/R$string;->seating_seat:I

    new-array v11, v3, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;->getSeat()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v2

    .line 195
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    if-eqz v1, :cond_6

    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_5
    move v0, v1

    move v1, v0

    .line 207
    goto :goto_0

    .line 202
    :cond_6
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 203
    goto :goto_1

    .line 210
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
