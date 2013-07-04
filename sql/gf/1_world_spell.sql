-- Fix warrior talent Executioner
DELETE FROM `spell_proc_event` WHERE `entry` IN (20502, 20503);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20502, 0, 4, 0x20000000, 0, 0, 0, 0, 0, 0, 0),
(20503, 0, 4, 0x20000000, 0, 0, 0, 0, 0, 0, 0);

-- Fix warrior talent Shield Mastery
DELETE FROM `spell_proc_event` WHERE `entry` IN (29598,84607,84608);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(29598, 0, 4, 0x00001000, 0, 0, 0, 0, 0, 0, 0),
(84607, 0, 4, 0x00001000, 0, 0, 0, 0, 0, 0, 0),
(84608, 0, 4, 0x00001000, 0, 0, 0, 0, 0, 0, 0);

-- Fix warrior talent Meat Cleaver
DELETE FROM `spell_proc_event` WHERE `entry` IN (12329,12950);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(12329, 0, 4, 0x00400000, 0x4, 0, 0, 0, 0, 0, 0),
(12950, 0, 4, 0x00400000, 0x4, 0, 0, 0, 0, 0, 0);

-- Fix warrior talent Thunderstruck
DELETE FROM `spell_proc_event` WHERE `entry` IN (80979,80980);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(80979, 0, 4, 0x00000080, 0 , 0, 0, 0, 0, 0, 0),
(80980, 0, 4, 0x00000080, 0 , 0, 0, 0, 0, 0, 0);

-- Fix warrior talent Lambs to the Slaughter
DELETE FROM `spell_proc_event` WHERE `entry` IN (84583,84587,84588);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(84583, 0, 4, 0x02000000, 0, 0, 0, 0, 0, 0, 0),
(84587, 0, 4, 0x02000000, 0, 0, 0, 0, 0, 0, 0),
(84588, 0, 4, 0x02000000, 0, 0, 0, 0, 0, 0, 0);

--Fix warrior talent Wrecking Crew
DELETE FROM `spell_proc_event` WHERE `entry` IN (46867, 56611, 56612);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(46867, 0, 4, 0x02000000, 0, 0, 0, 0x0000002, 0, 0, 0),
(56611, 0, 4, 0x02000000, 0, 0, 0, 0x0000002, 0, 0, 0),
(56612, 0, 4, 0x02000000, 0, 0, 0, 0x0000002, 0, 0, 0);

- Fix warrior talent "Die by the sword"
DELETE FROM `spell_script_names` WHERE `spell_id` IN (81913,81914);
INSERT INTO `spell_script_names`(`spell_id`, `ScriptName`) VALUES
(81913, 'spell_warr_die_by_the_sword'),
(81914, 'spell_warr_die_by_the_sword');

DELETE FROM `spell_proc_event` WHERE `entry` IN (81913,81914);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(81913, 0, 4, 0, 0, 0, 0, 0, 0, 0, 120),
(81914, 0, 4, 0, 0, 0, 0, 0, 0, 0, 120);