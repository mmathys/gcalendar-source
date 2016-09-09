.class public Lcom/android/calendar/event/ConferenceCallUtils;
.super Ljava/lang/Object;
.source "ConferenceCallUtils.java"


# static fields
.field private static final ACCESS_CODE_REGEX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONFERENCE_NUM_REGEX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->CONFERENCE_NUM_REGEX:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->CONFERENCE_NUM_REGEX:Ljava/util/ArrayList;

    const-string v1, "CCP:[\\s]*([+0-9\\s-]+)()x()([0-9]+[#]?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->CONFERENCE_NUM_REGEX:Ljava/util/ArrayList;

    const-string v1, "CCM:[\\s]*([+0-9\\s-]+)()x([0-9]+[#]?)()"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()()()[pP]articipant [cC]ode[:]?[\\s]*([0-9 ]+[#]?)"

    .line 72
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()()()[pP]articipant [pP]asscode[:]?[\\s]*([0-9 ]+[#]?)"

    .line 74
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()()()[pP][cC]ode[:]?[\\s]*([0-9\\s]+[#]?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()()[hH]ost [cC]ode[:]?[\\s]*([0-9\\s]+[#]?)()"

    .line 77
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()[aA]ccess [cC]ode[:]?[\\s]*([0-9\\s-]+[#]?)()()"

    .line 79
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()[mM]eeting [nN]umber[:]?[\\s]*([0-9\\s]+[#]?)()()"

    .line 81
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()[mM]eeting [iI][dD][:]?[\\s]*([0-9\\s-]+[#]?)()()"

    .line 83
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "CCP:[\\s]*([+0-9\\s-]+)()x()([0-9]+[#]?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "CCM:[\\s]*([+0-9\\s-]+)()x([0-9]+[#]?)()"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    const-string v1, "()PIN[:]?[\\s]*([0-9 ]+[#]?)()()"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public static addConferenceNumberLinks(Landroid/text/Spannable;)V
    .locals 12

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 181
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 182
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 183
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    .line 188
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 189
    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 190
    array-length v6, v0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v0, v2

    .line 191
    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 192
    const-string v9, "tel"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    invoke-interface {p0, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 190
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_4
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 202
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 203
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 204
    const-string v5, "tel"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 206
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 207
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 209
    new-instance v3, Lcom/android/calendar/event/ConferenceCallSpan;

    invoke-static {v4}, Lcom/android/calendar/event/ConferenceCallUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/calendar/event/ConferenceCallSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v3, v5, v6, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 202
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_6
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->CONFERENCE_NUM_REGEX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 215
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 217
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 219
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 220
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    .line 221
    new-instance v5, Lcom/android/calendar/event/ConferenceCallSpan;

    invoke-static {v2}, Lcom/android/calendar/event/ConferenceCallUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/calendar/event/ConferenceCallSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v5, v3, v4, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 226
    :cond_9
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;)V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 169
    invoke-static {p0}, Lcom/android/calendar/event/ConferenceCallUtils;->addConferenceNumberLinks(Landroid/text/Spannable;)V

    .line 170
    return-void
.end method

.method private static buildAccessCode(ILjava/lang/String;)Lcom/android/calendar/event/AccessCode;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 283
    const-string v0, "[\\s-]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    if-ne p0, v2, :cond_0

    .line 285
    new-instance v0, Lcom/android/calendar/event/AccessCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/AccessCode;-><init>(Ljava/lang/String;I)V

    .line 291
    :goto_0
    return-object v0

    .line 286
    :cond_0
    if-ne p0, v3, :cond_1

    .line 287
    new-instance v0, Lcom/android/calendar/event/AccessCode;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/AccessCode;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 289
    new-instance v0, Lcom/android/calendar/event/AccessCode;

    invoke-direct {v0, v1, v3}, Lcom/android/calendar/event/AccessCode;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 291
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    const-string v1, "tel"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static dialConferenceCall(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    instance-of v1, p2, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-eqz v1, :cond_0

    .line 106
    check-cast p2, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    .line 107
    invoke-interface {p2}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/android/calendar/event/ConferenceCallUtils;->dialConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/util/Set;)V

    .line 111
    return-void
.end method

.method public static dialConferenceCall(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/calendar/event/ConferenceCallUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->makeCall(Landroid/content/Context;ZLandroid/net/Uri;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-static {p2, p3}, Lcom/android/calendar/event/AccessCodePickerDialog;->newInstance(Ljava/lang/String;Ljava/util/Set;)Lcom/android/calendar/event/AccessCodePickerDialog;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/android/calendar/event/AccessCodePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/event/AccessCodePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logAction(Landroid/content/Context;II)V
    .locals 6

    .prologue
    .line 241
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 242
    sget v1, Lcom/android/calendar/R$string;->analytics_category_one_click_dialing:I

    .line 243
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    .line 242
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    return-void
.end method

.method public static logConferenceLinksShown(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/android/calendar/R$string;->analytics_action_conference_link_shown:I

    invoke-static {p0, v0, p1}, Lcom/android/calendar/event/ConferenceCallUtils;->logAction(Landroid/content/Context;II)V

    .line 230
    return-void
.end method

.method public static logConferenceLinksTapped(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/android/calendar/R$string;->analytics_action_conference_link_tapped:I

    invoke-static {p0, v0, p1}, Lcom/android/calendar/event/ConferenceCallUtils;->logAction(Landroid/content/Context;II)V

    .line 234
    return-void
.end method

.method public static logJoinConference(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 237
    sget v0, Lcom/android/calendar/R$string;->analytics_action_join_conference:I

    invoke-static {p0, v0, p1}, Lcom/android/calendar/event/ConferenceCallUtils;->logAction(Landroid/content/Context;II)V

    .line 238
    return-void
.end method

.method private static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    const-string v0, "[\\s-]+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseAccessCode(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->ACCESS_CODE_REGEX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 145
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 146
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/calendar/event/ConferenceCallUtils;->GROUP_ACCESS_CODE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 150
    invoke-static {v0, v5}, Lcom/android/calendar/event/ConferenceCallUtils;->buildAccessCode(ILjava/lang/String;)Lcom/android/calendar/event/AccessCode;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_3
    return-object v1
.end method
