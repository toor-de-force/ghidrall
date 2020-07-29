import json
import csv
fo = open("result.json", "r")
results = fo.read()
fo.close()

y = json.loads(results)
elapsed = y["elapsed"]
tests = y["tests"]

file_results = {}
for values in tests:
    score = values.get("code")
    time = values.get("elapsed")
    text = values.get("name").split(" ")[-1].split(".")
    if len(text) == 2:
        continue
    name = text[0]
    solver = text[2]
    optimization = text[3]
    local_vars = text[4]
    if name not in file_results:
        file_results[name] = {}
    target_field_score = optimization + "-" + solver + "-" + local_vars + "-score"
    target_field_time = optimization + "-" + solver + "-" + local_vars + "-time"
    file_results[name]["name"] = name
    file_results[name][target_field_score] = score
    file_results[name][target_field_time] = time

with open("results.csv", "w") as csv_file:
    fieldnames = ["name", "zero-chc-no_option-score", "zero-chc-no_option-time", "zero-chc-single_struct-score",
                  "zero-chc-single_struct-time", "zero-chc-byte_addressable-score", "zero-chc-byte_addressable-time",
                  "zero-bmc-no_option-score", "zero-bmc-no_option-time", "zero-bmc-single_struct-score",
                  "zero-bmc-single_struct-time", "zero-bmc-byte_addressable-score", "zero-bmc-byte_addressable-time",
                  "one-chc-no_option-score", "one-chc-no_option-time", "one-chc-single_struct-score",
                  "one-chc-single_struct-time", "one-chc-byte_addressable-score", "one-chc-byte_addressable-time",
                  "one-bmc-no_option-score", "one-bmc-no_option-time", "one-bmc-single_struct-score",
                  "one-bmc-single_struct-time", "one-bmc-byte_addressable-score", "one-bmc-byte_addressable-time",
                  "two-chc-no_option-score", "two-chc-no_option-time", "two-chc-single_struct-score",
                  "two-chc-single_struct-time", "two-chc-byte_addressable-score", "two-chc-byte_addressable-time",
                  "two-bmc-no_option-score", "two-bmc-no_option-time", "two-bmc-single_struct-score",
                  "two-bmc-single_struct-time", "two-bmc-byte_addressable-score", "two-bmc-byte_addressable-time",
                  "three-chc-no_option-score", "three-chc-no_option-time", "three-chc-single_struct-score",
                  "three-chc-single_struct-time", "three-chc-byte_addressable-score", "three-chc-byte_addressable-time",
                  "three-bmc-no_option-score", "three-bmc-no_option-time", "three-bmc-single_struct-score",
                  "three-bmc-single_struct-time", "three-bmc-byte_addressable-score", "three-bmc-byte_addressable-time"]

    writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
    writer.writeheader()
    for key, value in file_results.items():
        writer.writerow(value)


