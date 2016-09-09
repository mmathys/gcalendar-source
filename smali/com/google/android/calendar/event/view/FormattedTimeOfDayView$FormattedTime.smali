.class public Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;
.super Ljava/lang/Object;
.source "FormattedTimeOfDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FormattedTime"
.end annotation


# instance fields
.field final mFormattedTime:Ljava/lang/String;

.field mIsHomeTime:Z

.field final synthetic this$0:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;Landroid/content/Context;Lcom/google/api/services/calendar/model/Time;)V
    .locals 22

    .prologue
    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->this$0:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    .line 128
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;-><init>(Lcom/google/api/services/calendar/model/Time;Ljava/util/TimeZone;)V

    .line 104
    invoke-virtual {v3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->getMillis()J

    move-result-wide v4

    .line 105
    invoke-virtual {v3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->getIsHomeTime()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mIsHomeTime:Z

    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getDateOnly()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getDateOnly()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v17, 0x1

    .line 107
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    invoke-virtual {v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->getFlags()I

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    new-instance v3, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->getFlags()I

    move-result v8

    move-object/from16 v2, p2

    move-wide v6, v4

    .line 109
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 115
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const/16 v18, 0x0

    move-wide v10, v4

    move-wide v12, v4

    move-object/from16 v16, v9

    move-object/from16 v19, p2

    invoke-static/range {v10 .. v21}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 119
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 123
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 126
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;Landroid/content/Context;Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 15

    .prologue
    .line 137
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->this$0:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    .line 181
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 144
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 145
    new-instance v6, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;

    move-object/from16 v0, p3

    invoke-direct {v6, v0, v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;-><init>(Lcom/google/api/services/calendar/model/Time;Ljava/util/TimeZone;)V

    .line 146
    new-instance v4, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;-><init>(Lcom/google/api/services/calendar/model/Time;Ljava/util/TimeZone;)V

    .line 147
    invoke-virtual {v6}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->getMillis()J

    move-result-wide v2

    .line 148
    invoke-virtual {v4}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->getMillis()J

    move-result-wide v4

    .line 149
    invoke-virtual {v6}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$HomeTime;->getIsHomeTime()Z

    move-result v14

    .line 151
    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getDateOnly()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/google/api/services/calendar/model/Time;->getDateOnly()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v9, 0x1

    .line 153
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    const/4 v10, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v2 .. v13}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v2

    .line 159
    if-eqz v14, :cond_4

    .line 160
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    if-eqz v2, :cond_5

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getFormat()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 169
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto/16 :goto_0
.end method
